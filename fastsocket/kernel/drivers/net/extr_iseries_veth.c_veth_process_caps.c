
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_cap_data {int ack_timeout; int num_buffers; int ack_threshold; } ;
struct veth_lpar_connection {int ack_timeout; int num_ack_events; int remote_lp; struct veth_cap_data remote_caps; } ;


 int HZ ;
 int HvLpEvent_Rc_BufferNotAvailable ;
 int HvLpEvent_Rc_Good ;
 int HvLpEvent_Rc_InvalidSubtypeData ;
 int VETH_MAX_ACKS_PER_MSG ;
 int veth_allocate_events (int ,int) ;
 int veth_error (char*,int ) ;

__attribute__((used)) static int veth_process_caps(struct veth_lpar_connection *cnx)
{
 struct veth_cap_data *remote_caps = &cnx->remote_caps;
 int num_acks_needed;


 cnx->ack_timeout = remote_caps->ack_timeout * HZ / 1000000;

 if ( (remote_caps->num_buffers == 0)
      || (remote_caps->ack_threshold > VETH_MAX_ACKS_PER_MSG)
      || (remote_caps->ack_threshold == 0)
      || (cnx->ack_timeout == 0) ) {
  veth_error("Received incompatible capabilities from LPAR %d.\n",
    cnx->remote_lp);
  return HvLpEvent_Rc_InvalidSubtypeData;
 }

 num_acks_needed = (remote_caps->num_buffers
      / remote_caps->ack_threshold) + 1;


 if (cnx->num_ack_events < num_acks_needed) {
  int num;

  num = veth_allocate_events(cnx->remote_lp,
        num_acks_needed-cnx->num_ack_events);
  if (num > 0)
   cnx->num_ack_events += num;

  if (cnx->num_ack_events < num_acks_needed) {
   veth_error("Couldn't allocate enough ack events "
     "for LPAR %d.\n", cnx->remote_lp);

   return HvLpEvent_Rc_BufferNotAvailable;
  }
 }


 return HvLpEvent_Rc_Good;
}
