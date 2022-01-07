
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nes_cm_node {int mpa_frame_size; int mpa_frame_rev; } ;
struct ietf_mpa_v1 {int priv_data_len; int rev; int flags; int key; } ;


 int IEFT_MPA_KEY_REP ;
 int IEFT_MPA_KEY_REQ ;
 int IETF_MPA_FLAGS_CRC ;
 int IETF_MPA_KEY_SIZE ;


 int htons (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void build_mpa_v1(struct nes_cm_node *cm_node, void *start_addr, u8 mpa_key)
{
 struct ietf_mpa_v1 *mpa_frame = (struct ietf_mpa_v1 *)start_addr;

 switch (mpa_key) {
 case 128:
  memcpy(mpa_frame->key, IEFT_MPA_KEY_REQ, IETF_MPA_KEY_SIZE);
  break;
 case 129:
  memcpy(mpa_frame->key, IEFT_MPA_KEY_REP, IETF_MPA_KEY_SIZE);
  break;
 }
 mpa_frame->flags = IETF_MPA_FLAGS_CRC;
 mpa_frame->rev = cm_node->mpa_frame_rev;
 mpa_frame->priv_data_len = htons(cm_node->mpa_frame_size);
}
