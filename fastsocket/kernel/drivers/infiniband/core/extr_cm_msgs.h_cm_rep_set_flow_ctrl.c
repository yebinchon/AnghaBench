
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_rep_msg {int offset26; } ;



__attribute__((used)) static inline void cm_rep_set_flow_ctrl(struct cm_rep_msg *rep_msg,
         u8 flow_ctrl)
{
 rep_msg->offset26 = (u8) ((rep_msg->offset26 & 0xFE) |
      (flow_ctrl & 0x1));
}
