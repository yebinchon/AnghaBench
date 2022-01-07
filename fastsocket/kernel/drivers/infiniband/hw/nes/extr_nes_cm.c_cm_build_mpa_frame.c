
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nes_cm_node {int mpa_frame_rev; int mpa_frame_size; int * mpa_frame_buf; } ;
struct ietf_rtr_msg {int dummy; } ;
struct ietf_mpa_v2 {int dummy; } ;
struct ietf_mpa_v1 {int dummy; } ;


 int EINVAL ;


 int build_mpa_v1 (struct nes_cm_node*,int *,int ) ;
 int build_mpa_v2 (struct nes_cm_node*,int *,int ) ;

__attribute__((used)) static int cm_build_mpa_frame(struct nes_cm_node *cm_node, u8 **start_buff,
         u16 *buff_len, u8 *pci_mem, u8 mpa_key)
{
 int ret = 0;

 *start_buff = (pci_mem) ? pci_mem : &cm_node->mpa_frame_buf[0];

 switch (cm_node->mpa_frame_rev) {
 case 129:
  *start_buff = (u8 *)*start_buff + sizeof(struct ietf_rtr_msg);
  *buff_len = sizeof(struct ietf_mpa_v1) + cm_node->mpa_frame_size;
  build_mpa_v1(cm_node, *start_buff, mpa_key);
  break;
 case 128:
  *buff_len = sizeof(struct ietf_mpa_v2) + cm_node->mpa_frame_size;
  build_mpa_v2(cm_node, *start_buff, mpa_key);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
