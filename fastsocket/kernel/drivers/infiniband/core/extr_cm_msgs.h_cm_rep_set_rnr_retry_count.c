
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_rep_msg {int offset27; } ;



__attribute__((used)) static inline void cm_rep_set_rnr_retry_count(struct cm_rep_msg *rep_msg,
           u8 rnr_retry_count)
{
 rep_msg->offset27 = (u8) ((rep_msg->offset27 & 0x1F) |
      (rnr_retry_count << 5));
}
