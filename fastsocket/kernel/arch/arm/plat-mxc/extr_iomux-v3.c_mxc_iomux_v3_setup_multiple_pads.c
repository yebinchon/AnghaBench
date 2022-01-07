
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pad_desc {int dummy; } ;


 int mxc_iomux_v3_release_multiple_pads (struct pad_desc*,int) ;
 int mxc_iomux_v3_setup_pad (struct pad_desc*) ;

int mxc_iomux_v3_setup_multiple_pads(struct pad_desc *pad_list, unsigned count)
{
 struct pad_desc *p = pad_list;
 int i;
 int ret;

 for (i = 0; i < count; i++) {
  ret = mxc_iomux_v3_setup_pad(p);
  if (ret)
   goto setup_error;
  p++;
 }
 return 0;

setup_error:
 mxc_iomux_v3_release_multiple_pads(pad_list, i);
 return ret;
}
