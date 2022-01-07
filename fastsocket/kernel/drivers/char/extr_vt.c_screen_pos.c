
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 unsigned short* screenpos (struct vc_data*,int,int) ;

unsigned short *screen_pos(struct vc_data *vc, int w_offset, int viewed)
{
 return screenpos(vc, 2 * w_offset, viewed);
}
