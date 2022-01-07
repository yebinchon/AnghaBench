
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpar_connection {int pending_acks; scalar_t__ num_pending_acks; int remote_lp; } ;
typedef scalar_t__ HvLpEvent_Rc ;


 scalar_t__ HvLpEvent_Rc_Good ;
 int VETH_EVENT_FRAMES_ACK ;
 int memset (int *,int,int) ;
 int veth_error (char*,int ,int) ;
 scalar_t__ veth_signaldata (struct veth_lpar_connection*,int ,int ,int *) ;

__attribute__((used)) static void veth_flush_acks(struct veth_lpar_connection *cnx)
{
 HvLpEvent_Rc rc;

 rc = veth_signaldata(cnx, VETH_EVENT_FRAMES_ACK,
        0, &cnx->pending_acks);

 if (rc != HvLpEvent_Rc_Good)
  veth_error("Failed acking frames from LPAR %d, rc = %d\n",
    cnx->remote_lp, (int)rc);

 cnx->num_pending_acks = 0;
 memset(&cnx->pending_acks, 0xff, sizeof(cnx->pending_acks));
}
