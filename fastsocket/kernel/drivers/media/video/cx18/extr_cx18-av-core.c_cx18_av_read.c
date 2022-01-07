
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx18 {int dummy; } ;


 int cx18_read_reg (struct cx18*,int) ;

u8 cx18_av_read(struct cx18 *cx, u16 addr)
{
 u32 x = cx18_read_reg(cx, 0xc40000 + (addr & ~3));
 int shift = (addr & 3) * 8;

 return (x >> shift) & 0xff;
}
