
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_and_or (struct cx18*,int,int,int) ;

__attribute__((used)) static void set_bass(struct cx18 *cx, int bass)
{

 cx18_av_and_or(cx, 0x8d9, ~0x3f, 48 - (bass * 48 / 0xffff));
}
