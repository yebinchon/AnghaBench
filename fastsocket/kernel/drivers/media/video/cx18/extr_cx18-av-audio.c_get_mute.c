
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_read (struct cx18*,int) ;

__attribute__((used)) static int get_mute(struct cx18 *cx)
{

 return cx18_av_read(cx, 0x8d3) & 0x2 ? 1 : 0;
}
