
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ns83820 {scalar_t__ base; } ;


 scalar_t__ RFCR ;
 scalar_t__ RFDR ;
 int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void ns83820_getmac(struct ns83820 *dev, u8 *mac)
{
 unsigned i;
 for (i=0; i<3; i++) {
  u32 data;




  writel(i*2, dev->base + RFCR);
  data = readl(dev->base + RFDR);

  *mac++ = data;
  *mac++ = data >> 8;
 }
}
