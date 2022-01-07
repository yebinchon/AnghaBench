
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset63; } ;



__attribute__((used)) static inline u8 cm_lap_get_local_ack_timeout(struct cm_lap_msg *lap_msg)
{
 return lap_msg->offset63 >> 3;
}
