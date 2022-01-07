
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device_flags; int dpc_flags; int loop_state; int loop_down_timer; } ;
typedef TYPE_1__ scsi_qla_host_t ;
typedef int int32_t ;


 int DFLG_NO_CABLE ;
 int LOCAL_LOOP_UPDATE ;
 int LOOP_DEAD ;
 int LOOP_RESYNC_ACTIVE ;
 int LOOP_RESYNC_NEEDED ;
 int LOOP_UP ;
 int REGISTER_FC4_NEEDED ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int qla2x00_loop_resync (TYPE_1__*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

int qla2x00_perform_loop_resync(scsi_qla_host_t *ha)
{
 int32_t rval = 0;

 if (!test_and_set_bit(LOOP_RESYNC_ACTIVE, &ha->dpc_flags)) {

  atomic_set(&ha->loop_down_timer, 0);
  if (!(ha->device_flags & DFLG_NO_CABLE)) {
   atomic_set(&ha->loop_state, LOOP_UP);
   set_bit(LOCAL_LOOP_UPDATE, &ha->dpc_flags);
   set_bit(REGISTER_FC4_NEEDED, &ha->dpc_flags);
   set_bit(LOOP_RESYNC_NEEDED, &ha->dpc_flags);

   rval = qla2x00_loop_resync(ha);
  } else
   atomic_set(&ha->loop_state, LOOP_DEAD);

  clear_bit(LOOP_RESYNC_ACTIVE, &ha->dpc_flags);
 }

 return rval;
}
