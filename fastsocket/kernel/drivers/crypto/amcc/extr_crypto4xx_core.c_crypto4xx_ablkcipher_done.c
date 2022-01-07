
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int length; int offset; } ;
struct pd_uinfo {struct scatterlist* dest_va; scalar_t__ using_sd; int async_req; } ;
struct crypto4xx_device {TYPE_1__* core_dev; } ;
struct crypto4xx_ctx {int dummy; } ;
struct ce_pd {int dummy; } ;
struct TYPE_4__ {int (* complete ) (TYPE_2__*,int ) ;int tfm; } ;
struct ablkcipher_request {TYPE_2__ base; int dst; int nbytes; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int device; } ;


 int DMA_FROM_DEVICE ;
 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 int crypto4xx_copy_pkt_to_dst (struct crypto4xx_device*,struct ce_pd*,struct pd_uinfo*,int ,int ) ;
 int crypto4xx_ret_sg_desc (struct crypto4xx_device*,struct pd_uinfo*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;
 int dma_map_page (int ,int ,int ,int ,int ) ;
 int sg_page (struct scatterlist*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static u32 crypto4xx_ablkcipher_done(struct crypto4xx_device *dev,
         struct pd_uinfo *pd_uinfo,
         struct ce_pd *pd)
{
 struct crypto4xx_ctx *ctx;
 struct ablkcipher_request *ablk_req;
 struct scatterlist *dst;
 dma_addr_t addr;

 ablk_req = ablkcipher_request_cast(pd_uinfo->async_req);
 ctx = crypto_tfm_ctx(ablk_req->base.tfm);

 if (pd_uinfo->using_sd) {
  crypto4xx_copy_pkt_to_dst(dev, pd, pd_uinfo, ablk_req->nbytes,
       ablk_req->dst);
 } else {
  dst = pd_uinfo->dest_va;
  addr = dma_map_page(dev->core_dev->device, sg_page(dst),
        dst->offset, dst->length, DMA_FROM_DEVICE);
 }
 crypto4xx_ret_sg_desc(dev, pd_uinfo);
 if (ablk_req->base.complete != ((void*)0))
  ablk_req->base.complete(&ablk_req->base, 0);

 return 0;
}
