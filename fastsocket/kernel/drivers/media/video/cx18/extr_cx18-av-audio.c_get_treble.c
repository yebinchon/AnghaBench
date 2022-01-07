
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_read (struct cx18*,int) ;

__attribute__((used)) static int get_treble(struct cx18 *cx)
{



 int treble = cx18_av_read(cx, 0x8db) & 0x3f;
 treble = (((48 - treble) * 0xffff) + 47) / 48;
 return treble;
}
