
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct talitos_ptr {int dummy; } ;
struct talitos_desc {TYPE_1__* ptr; } ;
struct talitos_edesc {int src_nents; int dma_len; scalar_t__ dma_link_tbl; struct talitos_ptr* link_tbl; int dst_is_chained; scalar_t__ dst_nents; int src_is_chained; struct talitos_desc desc; } ;
struct talitos_ctx {unsigned int keylen; char* iv; struct device* dev; int key; } ;
struct device {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {unsigned int nbytes; char* info; scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_3__ {int j_extent; void* len; } ;


 int DESC_PTR_LNKTBL_JUMP ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int common_nonsnoop_unmap (struct device*,struct talitos_edesc*,struct ablkcipher_request*) ;
 void* cpu_to_be16 (unsigned int) ;
 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int dma_sync_single_for_device (struct device*,scalar_t__,int ,int ) ;
 int kfree (struct talitos_edesc*) ;
 int map_single_talitos_ptr (struct device*,TYPE_1__*,unsigned int,char*,int ,int ) ;
 scalar_t__ sg_dma_address (scalar_t__) ;
 int sg_to_link_tbl (scalar_t__,int,unsigned int,struct talitos_ptr*) ;
 int talitos_map_sg (struct device*,scalar_t__,int,int ,int ) ;
 int talitos_submit (struct device*,struct talitos_desc*,void (*) (struct device*,struct talitos_desc*,void*,int),struct ablkcipher_request*) ;
 int to_talitos_ptr (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int common_nonsnoop(struct talitos_edesc *edesc,
      struct ablkcipher_request *areq,
      u8 *giv,
      void (*callback) (struct device *dev,
          struct talitos_desc *desc,
          void *context, int error))
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 struct device *dev = ctx->dev;
 struct talitos_desc *desc = &edesc->desc;
 unsigned int cryptlen = areq->nbytes;
 unsigned int ivsize;
 int sg_count, ret;


 desc->ptr[0].len = 0;
 to_talitos_ptr(&desc->ptr[0], 0);
 desc->ptr[0].j_extent = 0;


 ivsize = crypto_ablkcipher_ivsize(cipher);
 map_single_talitos_ptr(dev, &desc->ptr[1], ivsize, giv ?: areq->info, 0,
          DMA_TO_DEVICE);


 map_single_talitos_ptr(dev, &desc->ptr[2], ctx->keylen,
          (char *)&ctx->key, 0, DMA_TO_DEVICE);




 desc->ptr[3].len = cpu_to_be16(cryptlen);
 desc->ptr[3].j_extent = 0;

 sg_count = talitos_map_sg(dev, areq->src, edesc->src_nents ? : 1,
      (areq->src == areq->dst) ? DMA_BIDIRECTIONAL
          : DMA_TO_DEVICE,
      edesc->src_is_chained);

 if (sg_count == 1) {
  to_talitos_ptr(&desc->ptr[3], sg_dma_address(areq->src));
 } else {
  sg_count = sg_to_link_tbl(areq->src, sg_count, cryptlen,
       &edesc->link_tbl[0]);
  if (sg_count > 1) {
   to_talitos_ptr(&desc->ptr[3], edesc->dma_link_tbl);
   desc->ptr[3].j_extent |= DESC_PTR_LNKTBL_JUMP;
   dma_sync_single_for_device(dev, edesc->dma_link_tbl,
         edesc->dma_len,
         DMA_BIDIRECTIONAL);
  } else {

   to_talitos_ptr(&desc->ptr[3],
           sg_dma_address(areq->src));
  }
 }


 desc->ptr[4].len = cpu_to_be16(cryptlen);
 desc->ptr[4].j_extent = 0;

 if (areq->src != areq->dst)
  sg_count = talitos_map_sg(dev, areq->dst,
       edesc->dst_nents ? : 1,
       DMA_FROM_DEVICE,
       edesc->dst_is_chained);

 if (sg_count == 1) {
  to_talitos_ptr(&desc->ptr[4], sg_dma_address(areq->dst));
 } else {
  struct talitos_ptr *link_tbl_ptr =
   &edesc->link_tbl[edesc->src_nents + 1];

  to_talitos_ptr(&desc->ptr[4], edesc->dma_link_tbl +
           (edesc->src_nents + 1) *
           sizeof(struct talitos_ptr));
  desc->ptr[4].j_extent |= DESC_PTR_LNKTBL_JUMP;
  sg_count = sg_to_link_tbl(areq->dst, sg_count, cryptlen,
       link_tbl_ptr);
  dma_sync_single_for_device(ctx->dev, edesc->dma_link_tbl,
        edesc->dma_len, DMA_BIDIRECTIONAL);
 }


 map_single_talitos_ptr(dev, &desc->ptr[5], ivsize, ctx->iv, 0,
          DMA_FROM_DEVICE);


 desc->ptr[6].len = 0;
 to_talitos_ptr(&desc->ptr[6], 0);
 desc->ptr[6].j_extent = 0;

 ret = talitos_submit(dev, desc, callback, areq);
 if (ret != -EINPROGRESS) {
  common_nonsnoop_unmap(dev, edesc, areq);
  kfree(edesc);
 }
 return ret;
}
