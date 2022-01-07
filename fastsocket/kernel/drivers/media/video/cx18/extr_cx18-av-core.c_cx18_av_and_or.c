
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u16 ;
struct cx18 {int dummy; } ;


 unsigned int cx18_av_read (struct cx18*,int ) ;
 int cx18_av_write (struct cx18*,int ,unsigned int) ;

int cx18_av_and_or(struct cx18 *cx, u16 addr, unsigned and_mask,
     u8 or_value)
{
 return cx18_av_write(cx, addr,
        (cx18_av_read(cx, addr) & and_mask) |
        or_value);
}
