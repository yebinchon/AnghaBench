
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_read (struct cx18*,int) ;

__attribute__((used)) static int get_bass(struct cx18 *cx)
{



 int bass = cx18_av_read(cx, 0x8d9) & 0x3f;
 bass = (((48 - bass) * 0xffff) + 47) / 48;
 return bass;
}
