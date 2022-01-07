
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct talitos_ptr {int dummy; } ;
struct talitos_edesc {int src_nents; int dst_nents; int src_is_chained; int dst_is_chained; int dma_len; int * link_tbl; int dma_link_tbl; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int ENOMEM ;
 struct talitos_edesc* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 unsigned int TALITOS_MAX_DATA_LEN ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int *,int,int ) ;
 struct talitos_edesc* kmalloc (int,int) ;
 int sg_count (struct scatterlist*,unsigned int,int*) ;

__attribute__((used)) static struct talitos_edesc *talitos_edesc_alloc(struct device *dev,
       struct scatterlist *src,
       struct scatterlist *dst,
       unsigned int cryptlen,
       unsigned int authsize,
       int icv_stashing,
       u32 cryptoflags)
{
 struct talitos_edesc *edesc;
 int src_nents, dst_nents, alloc_len, dma_len;
 int src_chained, dst_chained = 0;
 gfp_t flags = cryptoflags & CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL :
        GFP_ATOMIC;

 if (cryptlen + authsize > TALITOS_MAX_DATA_LEN) {
  dev_err(dev, "length exceeds h/w max limit\n");
  return ERR_PTR(-EINVAL);
 }

 src_nents = sg_count(src, cryptlen + authsize, &src_chained);
 src_nents = (src_nents == 1) ? 0 : src_nents;

 if (dst == src) {
  dst_nents = src_nents;
 } else {
  dst_nents = sg_count(dst, cryptlen + authsize, &dst_chained);
  dst_nents = (dst_nents == 1) ? 0 : dst_nents;
 }






 alloc_len = sizeof(struct talitos_edesc);
 if (src_nents || dst_nents) {
  dma_len = (src_nents + dst_nents + 2) *
     sizeof(struct talitos_ptr) + authsize;
  alloc_len += dma_len;
 } else {
  dma_len = 0;
  alloc_len += icv_stashing ? authsize : 0;
 }

 edesc = kmalloc(alloc_len, GFP_DMA | flags);
 if (!edesc) {
  dev_err(dev, "could not allocate edescriptor\n");
  return ERR_PTR(-ENOMEM);
 }

 edesc->src_nents = src_nents;
 edesc->dst_nents = dst_nents;
 edesc->src_is_chained = src_chained;
 edesc->dst_is_chained = dst_chained;
 edesc->dma_len = dma_len;
 edesc->dma_link_tbl = dma_map_single(dev, &edesc->link_tbl[0],
          edesc->dma_len, DMA_BIDIRECTIONAL);

 return edesc;
}
