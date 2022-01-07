
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cx18 {int dummy; } ;


 int cx18_av_read4 (struct cx18*,int ) ;
 int cx18_av_write4 (struct cx18*,int ,int) ;

int cx18_av_and_or4(struct cx18 *cx, u16 addr, u32 and_mask,
     u32 or_value)
{
 return cx18_av_write4(cx, addr,
        (cx18_av_read4(cx, addr) & and_mask) |
        or_value);
}
