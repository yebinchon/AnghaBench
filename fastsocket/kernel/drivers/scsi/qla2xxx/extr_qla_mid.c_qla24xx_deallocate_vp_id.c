
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct qla_hw_data {int vport_lock; int vp_idx_map; int num_vhosts; int vport_slock; } ;
struct TYPE_3__ {int vp_idx; int list; int vref_count; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int ) ;
 int list_del (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
qla24xx_deallocate_vp_id(scsi_qla_host_t *vha)
{
 uint16_t vp_id;
 struct qla_hw_data *ha = vha->hw;
 unsigned long flags = 0;

 mutex_lock(&ha->vport_lock);







 spin_lock_irqsave(&ha->vport_slock, flags);
 while (atomic_read(&vha->vref_count)) {
  spin_unlock_irqrestore(&ha->vport_slock, flags);

  msleep(500);

  spin_lock_irqsave(&ha->vport_slock, flags);
 }
 list_del(&vha->list);
 spin_unlock_irqrestore(&ha->vport_slock, flags);

 vp_id = vha->vp_idx;
 ha->num_vhosts--;
 clear_bit(vp_id, ha->vp_idx_map);

 mutex_unlock(&ha->vport_lock);
}
