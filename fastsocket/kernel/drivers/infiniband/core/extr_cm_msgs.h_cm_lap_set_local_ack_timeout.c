
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset63; } ;



__attribute__((used)) static inline void cm_lap_set_local_ack_timeout(struct cm_lap_msg *lap_msg,
      u8 local_ack_timeout)
{
 lap_msg->offset63 = (local_ack_timeout << 3) |
       (lap_msg->offset63 & 0x07);
}
