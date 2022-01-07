
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pad_desc {unsigned int pad_ctrl_ofs; } ;


 int clear_bit (unsigned int,int ) ;
 int iomux_v3_pad_alloc_map ;

void mxc_iomux_v3_release_pad(struct pad_desc *pad)
{
 unsigned int pad_ofs = pad->pad_ctrl_ofs;

 clear_bit(pad_ofs >> 2, iomux_v3_pad_alloc_map);
}
