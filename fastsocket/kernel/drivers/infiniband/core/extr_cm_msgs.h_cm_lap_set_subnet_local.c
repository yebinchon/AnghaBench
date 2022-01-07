
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset62; int offset61; } ;



__attribute__((used)) static inline void cm_lap_set_subnet_local(struct cm_lap_msg *lap_msg,
        u8 subnet_local)
{
 lap_msg->offset62 = ((subnet_local & 0x1) << 3) |
        (lap_msg->offset61 & 0xF7);
}
