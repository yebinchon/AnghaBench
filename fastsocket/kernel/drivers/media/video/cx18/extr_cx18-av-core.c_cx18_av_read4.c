
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct cx18 {int dummy; } ;


 int cx18_read_reg (struct cx18*,scalar_t__) ;

u32 cx18_av_read4(struct cx18 *cx, u16 addr)
{
 return cx18_read_reg(cx, 0xc40000 + addr);
}
