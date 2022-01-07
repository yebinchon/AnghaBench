
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heartbeat_data {int* bit_pos; unsigned int mask; int regsize; int base; } ;


 unsigned int ioread16 (int ) ;
 unsigned int ioread32 (int ) ;
 unsigned int ioread8 (int ) ;
 int iowrite16 (unsigned int,int ) ;
 int iowrite32 (unsigned int,int ) ;
 int iowrite8 (unsigned int,int ) ;

__attribute__((used)) static inline void heartbeat_toggle_bit(struct heartbeat_data *hd,
     unsigned bit, unsigned int inverted)
{
 unsigned int new;

 new = (1 << hd->bit_pos[bit]);
 if (inverted)
  new = ~new;

 new &= hd->mask;

 switch (hd->regsize) {
 case 32:
  new |= ioread32(hd->base) & ~hd->mask;
  iowrite32(new, hd->base);
  break;
 case 16:
  new |= ioread16(hd->base) & ~hd->mask;
  iowrite16(new, hd->base);
  break;
 default:
  new |= ioread8(hd->base) & ~hd->mask;
  iowrite8(new, hd->base);
  break;
 }
}
