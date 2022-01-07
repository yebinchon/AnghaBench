
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_mad {int dummy; } ;
struct cm_generic_msg {int remote_comm_id; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static void set_remote_comm_id(struct ib_mad *mad, u32 cm_id)
{
 struct cm_generic_msg *msg = (struct cm_generic_msg *)mad;
 msg->remote_comm_id = cpu_to_be32(cm_id);
}
