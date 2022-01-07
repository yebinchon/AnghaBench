
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int load_state; unsigned long dcon; unsigned long xfer_unit; int * next; int addr_reg; } ;
struct s3c2410_dma_buf {int data; unsigned long size; int * next; } ;


 int EINVAL ;
 unsigned long S3C2410_DCON_AUTORELOAD ;
 unsigned long S3C2410_DCON_NORELOAD ;
 int S3C2410_DMALOAD_1LOADED ;
 int S3C2410_DMALOAD_1LOADED_1RUNNING ;


 int S3C2410_DMA_DCON ;
 int dma_wrreg (struct s3c2410_dma_chan*,int ,unsigned long) ;
 int dmawarn (char*,...) ;
 int pr_debug (char*,struct s3c2410_dma_buf*,...) ;
 int writel (int,int ) ;

__attribute__((used)) static inline int
s3c2410_dma_loadbuffer(struct s3c2410_dma_chan *chan,
         struct s3c2410_dma_buf *buf)
{
 unsigned long reload;

 if (buf == ((void*)0)) {
  dmawarn("buffer is NULL\n");
  return -EINVAL;
 }

 pr_debug("s3c2410_chan_loadbuffer: loading buff %p (0x%08lx,0x%06x)\n",
   buf, (unsigned long)buf->data, buf->size);



 if (chan->load_state == S3C2410_DMALOAD_1LOADED) {
  dmawarn("load_state is S3C2410_DMALOAD_1LOADED\n");
 }

 if (chan->load_state == S3C2410_DMALOAD_1LOADED_1RUNNING) {
  dmawarn("state is S3C2410_DMALOAD_1LOADED_1RUNNING\n");
 }





 if (chan->load_state == 128) {
  pr_debug("load_state is none, checking for noreload (next=%p)\n",
    buf->next);
  reload = (buf->next == ((void*)0)) ? S3C2410_DCON_NORELOAD : 0;
 } else {

  reload = S3C2410_DCON_AUTORELOAD;
 }

 if ((buf->data & 0xf0000000) != 0x30000000) {
  dmawarn("dmaload: buffer is %p\n", (void *)buf->data);
 }

 writel(buf->data, chan->addr_reg);

 dma_wrreg(chan, S3C2410_DMA_DCON,
    chan->dcon | reload | (buf->size/chan->xfer_unit));

 chan->next = buf->next;



 switch (chan->load_state) {
 case 128:
  chan->load_state = S3C2410_DMALOAD_1LOADED;
  break;

 case 129:
  chan->load_state = S3C2410_DMALOAD_1LOADED_1RUNNING;
  break;

 default:
  dmawarn("dmaload: unknown state %d in loadbuffer\n",
   chan->load_state);
  break;
 }

 return 0;
}
