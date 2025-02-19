
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pad_desc {unsigned int pad_ctrl_ofs; int mux_mode; int select_input; int pad_ctrl; scalar_t__ select_input_ofs; scalar_t__ mux_ctrl_ofs; } ;


 int EBUSY ;
 int NO_PAD_CTRL ;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__ base ;
 int iomux_v3_pad_alloc_map ;
 scalar_t__ test_and_set_bit (unsigned int,int ) ;

int mxc_iomux_v3_setup_pad(struct pad_desc *pad)
{
 unsigned int pad_ofs = pad->pad_ctrl_ofs;

 if (test_and_set_bit(pad_ofs >> 2, iomux_v3_pad_alloc_map))
  return -EBUSY;
 if (pad->mux_ctrl_ofs)
  __raw_writel(pad->mux_mode, base + pad->mux_ctrl_ofs);

 if (pad->select_input_ofs)
  __raw_writel(pad->select_input,
    base + pad->select_input_ofs);

 if (!(pad->pad_ctrl & NO_PAD_CTRL) && pad->pad_ctrl_ofs)
  __raw_writel(pad->pad_ctrl, base + pad->pad_ctrl_ofs);
 return 0;
}
