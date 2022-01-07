
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpar_connection {scalar_t__ num_events; size_t remote_lp; scalar_t__ num_ack_events; struct veth_lpar_connection* msgs; } ;


 int HvLpEvent_Type_VirtualLan ;
 int kfree (struct veth_lpar_connection*) ;
 int mf_deallocate_lp_events (size_t,int ,scalar_t__,int *,int *) ;
 int ** veth_cnx ;

__attribute__((used)) static void veth_destroy_connection(struct veth_lpar_connection *cnx)
{
 if (!cnx)
  return;

 if (cnx->num_events > 0)
  mf_deallocate_lp_events(cnx->remote_lp,
          HvLpEvent_Type_VirtualLan,
          cnx->num_events,
          ((void*)0), ((void*)0));
 if (cnx->num_ack_events > 0)
  mf_deallocate_lp_events(cnx->remote_lp,
          HvLpEvent_Type_VirtualLan,
          cnx->num_ack_events,
          ((void*)0), ((void*)0));

 kfree(cnx->msgs);
 veth_cnx[cnx->remote_lp] = ((void*)0);
 kfree(cnx);
}
