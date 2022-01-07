
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int HPEE_DMA_CHANNEL_MASK ;
 int HPEE_DMA_MAX_ENT ;
 int HPEE_DMA_MORE ;
 int get_8 (unsigned char const*) ;
 int printk (char*,int) ;

__attribute__((used)) static int configure_dma(const unsigned char *buf)
{
 int len;
 u_int8_t c;
 int i;

 len=0;

 for (i=0;i<HPEE_DMA_MAX_ENT;i++) {
  c = get_8(buf+len);
  printk("DMA %d ", c&HPEE_DMA_CHANNEL_MASK);

  len+=2;
  if (!(c & HPEE_DMA_MORE)) {
   break;
  }
 }

 return len;
}
