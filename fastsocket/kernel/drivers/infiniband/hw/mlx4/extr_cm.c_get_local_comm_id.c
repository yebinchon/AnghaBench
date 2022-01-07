
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_mad {int dummy; } ;
struct cm_generic_msg {int local_comm_id; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 get_local_comm_id(struct ib_mad *mad)
{
 struct cm_generic_msg *msg = (struct cm_generic_msg *)mad;

 return be32_to_cpu(msg->local_comm_id);
}
