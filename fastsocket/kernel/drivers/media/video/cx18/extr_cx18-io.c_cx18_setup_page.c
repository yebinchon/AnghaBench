
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int dummy; } ;


 int cx18_read_reg (struct cx18*,int) ;
 int cx18_write_reg (struct cx18*,int,int) ;

void cx18_setup_page(struct cx18 *cx, u32 addr)
{
 u32 val;
 val = cx18_read_reg(cx, 0xD000F8);
 val = (val & ~0x1f00) | ((addr >> 17) & 0x1f00);
 cx18_write_reg(cx, val, 0xD000F8);
}
