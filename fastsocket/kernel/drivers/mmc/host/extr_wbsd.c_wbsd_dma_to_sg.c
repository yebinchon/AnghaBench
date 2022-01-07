
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {char* dma_buffer; } ;
struct scatterlist {int length; } ;
struct mmc_data {unsigned int sg_len; struct scatterlist* sg; } ;


 int memcpy (char*,char*,int ) ;
 char* sg_virt (struct scatterlist*) ;

__attribute__((used)) static inline void wbsd_dma_to_sg(struct wbsd_host *host, struct mmc_data *data)
{
 unsigned int len, i;
 struct scatterlist *sg;
 char *dmabuf = host->dma_buffer;
 char *sgbuf;

 sg = data->sg;
 len = data->sg_len;

 for (i = 0; i < len; i++) {
  sgbuf = sg_virt(&sg[i]);
  memcpy(sgbuf, dmabuf, sg[i].length);
  dmabuf += sg[i].length;
 }
}
