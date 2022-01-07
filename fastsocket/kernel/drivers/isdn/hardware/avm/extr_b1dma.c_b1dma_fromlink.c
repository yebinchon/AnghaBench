
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
typedef TYPE_1__ avmcard ;


 int HZ ;
 int b1dma_rx_full (int ) ;
 int jiffies ;
 int t1inp (int ,int) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int b1dma_fromlink(avmcard *card, void *buf, unsigned int len)
{
 unsigned long stop = jiffies + 1 * HZ;
 unsigned char *s = (unsigned char *)buf;
 while (len--) {
  while ( !b1dma_rx_full(card->port)
         && time_before(jiffies, stop));
  if (!b1dma_rx_full(card->port))
   return -1;
         *s++ = t1inp(card->port, 0x00);
 }
 return 0;
}
