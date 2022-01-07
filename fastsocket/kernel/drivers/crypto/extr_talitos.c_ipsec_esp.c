
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct talitos_ptr {unsigned int j_extent; void* len; } ;
struct talitos_desc {int hdr; struct talitos_ptr* ptr; } ;
struct talitos_edesc {int src_nents; int dst_nents; int dma_len; scalar_t__ dma_link_tbl; struct talitos_ptr* link_tbl; int dst_is_chained; struct talitos_desc desc; int src_is_chained; } ;
struct talitos_ctx {unsigned int authsize; unsigned int authkeylen; char key; unsigned int enckeylen; char* iv; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; unsigned int assoclen; char* iv; scalar_t__ src; scalar_t__ dst; int assoc; } ;


 int DESC_HDR_MODE1_MDEU_CICV ;
 unsigned int DESC_PTR_LNKTBL_JUMP ;
 unsigned int DESC_PTR_LNKTBL_RETURN ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 void* cpu_to_be16 (unsigned int) ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dma_sync_single_for_device (struct device*,scalar_t__,int ,int ) ;
 int ipsec_esp_unmap (struct device*,struct talitos_edesc*,struct aead_request*) ;
 int kfree (struct talitos_edesc*) ;
 int map_single_talitos_ptr (struct device*,struct talitos_ptr*,unsigned int,char*,int ,int ) ;
 scalar_t__ sg_dma_address (scalar_t__) ;
 int sg_to_link_tbl (scalar_t__,int,unsigned int,struct talitos_ptr*) ;
 char* sg_virt (int ) ;
 int talitos_map_sg (struct device*,scalar_t__,int,int ,int ) ;
 int talitos_submit (struct device*,struct talitos_desc*,void (*) (struct device*,struct talitos_desc*,void*,int),struct aead_request*) ;
 int to_talitos_ptr (struct talitos_ptr*,scalar_t__) ;

__attribute__((used)) static int ipsec_esp(struct talitos_edesc *edesc, struct aead_request *areq,
       u8 *giv, u64 seq,
       void (*callback) (struct device *dev,
           struct talitos_desc *desc,
           void *context, int error))
{
 struct crypto_aead *aead = crypto_aead_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_aead_ctx(aead);
 struct device *dev = ctx->dev;
 struct talitos_desc *desc = &edesc->desc;
 unsigned int cryptlen = areq->cryptlen;
 unsigned int authsize = ctx->authsize;
 unsigned int ivsize = crypto_aead_ivsize(aead);
 int sg_count, ret;
 int sg_link_tbl_len;


 map_single_talitos_ptr(dev, &desc->ptr[0], ctx->authkeylen, &ctx->key,
          0, DMA_TO_DEVICE);

 map_single_talitos_ptr(dev, &desc->ptr[1], areq->assoclen + ivsize,
          sg_virt(areq->assoc), 0, DMA_TO_DEVICE);

 map_single_talitos_ptr(dev, &desc->ptr[2], ivsize, giv ?: areq->iv, 0,
          DMA_TO_DEVICE);


 map_single_talitos_ptr(dev, &desc->ptr[3], ctx->enckeylen,
          (char *)&ctx->key + ctx->authkeylen, 0,
          DMA_TO_DEVICE);







 desc->ptr[4].len = cpu_to_be16(cryptlen);
 desc->ptr[4].j_extent = authsize;

 sg_count = talitos_map_sg(dev, areq->src, edesc->src_nents ? : 1,
      (areq->src == areq->dst) ? DMA_BIDIRECTIONAL
          : DMA_TO_DEVICE,
      edesc->src_is_chained);

 if (sg_count == 1) {
  to_talitos_ptr(&desc->ptr[4], sg_dma_address(areq->src));
 } else {
  sg_link_tbl_len = cryptlen;

  if (edesc->desc.hdr & DESC_HDR_MODE1_MDEU_CICV)
   sg_link_tbl_len = cryptlen + authsize;

  sg_count = sg_to_link_tbl(areq->src, sg_count, sg_link_tbl_len,
       &edesc->link_tbl[0]);
  if (sg_count > 1) {
   desc->ptr[4].j_extent |= DESC_PTR_LNKTBL_JUMP;
   to_talitos_ptr(&desc->ptr[4], edesc->dma_link_tbl);
   dma_sync_single_for_device(dev, edesc->dma_link_tbl,
         edesc->dma_len,
         DMA_BIDIRECTIONAL);
  } else {

   to_talitos_ptr(&desc->ptr[4],
           sg_dma_address(areq->src));
  }
 }


 desc->ptr[5].len = cpu_to_be16(cryptlen);
 desc->ptr[5].j_extent = authsize;

 if (areq->src != areq->dst)
  sg_count = talitos_map_sg(dev, areq->dst,
       edesc->dst_nents ? : 1,
       DMA_FROM_DEVICE,
       edesc->dst_is_chained);

 if (sg_count == 1) {
  to_talitos_ptr(&desc->ptr[5], sg_dma_address(areq->dst));
 } else {
  struct talitos_ptr *link_tbl_ptr =
   &edesc->link_tbl[edesc->src_nents + 1];

  to_talitos_ptr(&desc->ptr[5], edesc->dma_link_tbl +
          (edesc->src_nents + 1) *
          sizeof(struct talitos_ptr));
  sg_count = sg_to_link_tbl(areq->dst, sg_count, cryptlen,
       link_tbl_ptr);


  link_tbl_ptr += sg_count - 1;
  link_tbl_ptr->j_extent = 0;
  sg_count++;
  link_tbl_ptr++;
  link_tbl_ptr->j_extent = DESC_PTR_LNKTBL_RETURN;
  link_tbl_ptr->len = cpu_to_be16(authsize);


  to_talitos_ptr(link_tbl_ptr, edesc->dma_link_tbl +
          (edesc->src_nents + edesc->dst_nents + 2) *
          sizeof(struct talitos_ptr));
  desc->ptr[5].j_extent |= DESC_PTR_LNKTBL_JUMP;
  dma_sync_single_for_device(ctx->dev, edesc->dma_link_tbl,
        edesc->dma_len, DMA_BIDIRECTIONAL);
 }


 map_single_talitos_ptr(dev, &desc->ptr[6], ivsize, ctx->iv, 0,
          DMA_FROM_DEVICE);

 ret = talitos_submit(dev, desc, callback, areq);
 if (ret != -EINPROGRESS) {
  ipsec_esp_unmap(dev, edesc, areq);
  kfree(edesc);
 }
 return ret;
}
