
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RBTX4939_IRQ_IOC ;
 int __fls8 (unsigned char) ;
 int rbtx4939_ifac2_addr ;
 unsigned char readb (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int rbtx4939_ioc_irqroute(void)
{
 unsigned char istat = readb(rbtx4939_ifac2_addr);

 if (unlikely(istat == 0))
  return -1;
 return RBTX4939_IRQ_IOC + __fls8(istat);
}
