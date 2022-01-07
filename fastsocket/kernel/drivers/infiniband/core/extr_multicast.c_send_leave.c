
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct mcast_port {int port_num; TYPE_1__* dev; } ;
struct ib_sa_mcmember_rec {void* join_state; } ;
struct mcast_group {int query_id; int query; void* leave_state; struct ib_sa_mcmember_rec rec; struct mcast_port* port; } ;
struct TYPE_2__ {int device; } ;


 int GFP_KERNEL ;
 int IB_SA_MCMEMBER_REC_JOIN_STATE ;
 int IB_SA_MCMEMBER_REC_MGID ;
 int IB_SA_MCMEMBER_REC_PORT_GID ;
 int IB_SA_METHOD_DELETE ;
 int ib_sa_mcmember_rec_query (int *,int ,int ,int ,struct ib_sa_mcmember_rec*,int,int,int ,int ,struct mcast_group*,int *) ;
 int leave_handler ;
 int sa_client ;

__attribute__((used)) static int send_leave(struct mcast_group *group, u8 leave_state)
{
 struct mcast_port *port = group->port;
 struct ib_sa_mcmember_rec rec;
 int ret;

 rec = group->rec;
 rec.join_state = leave_state;
 group->leave_state = leave_state;

 ret = ib_sa_mcmember_rec_query(&sa_client, port->dev->device,
           port->port_num, IB_SA_METHOD_DELETE, &rec,
           IB_SA_MCMEMBER_REC_MGID |
           IB_SA_MCMEMBER_REC_PORT_GID |
           IB_SA_MCMEMBER_REC_JOIN_STATE,
           3000, GFP_KERNEL, leave_handler,
           group, &group->query);
 if (ret >= 0) {
  group->query_id = ret;
  ret = 0;
 }
 return ret;
}
