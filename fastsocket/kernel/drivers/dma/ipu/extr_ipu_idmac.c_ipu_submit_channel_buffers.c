
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct idmac_tx_desc {struct scatterlist* sg; } ;
struct idmac_channel {struct scatterlist** sg; } ;


 int ipu_submit_buffer (struct idmac_channel*,struct idmac_tx_desc*,struct scatterlist*,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int ipu_submit_channel_buffers(struct idmac_channel *ichan,
          struct idmac_tx_desc *desc)
{
 struct scatterlist *sg;
 int i, ret = 0;

 for (i = 0, sg = desc->sg; i < 2 && sg; i++) {
  if (!ichan->sg[i]) {
   ichan->sg[i] = sg;

   ret = ipu_submit_buffer(ichan, desc, sg, i);
   if (ret < 0)
    return ret;

   sg = sg_next(sg);
  }
 }

 return ret;
}
