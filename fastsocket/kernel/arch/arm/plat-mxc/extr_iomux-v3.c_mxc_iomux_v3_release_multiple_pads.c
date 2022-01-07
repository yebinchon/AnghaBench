
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pad_desc {int dummy; } ;


 int mxc_iomux_v3_release_pad (struct pad_desc*) ;

void mxc_iomux_v3_release_multiple_pads(struct pad_desc *pad_list, int count)
{
 struct pad_desc *p = pad_list;
 int i;

 for (i = 0; i < count; i++) {
  mxc_iomux_v3_release_pad(p);
  p++;
 }
}
