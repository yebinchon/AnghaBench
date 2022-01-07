
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_13__ {int ac; } ;
struct TYPE_12__ {int mmwc; } ;
struct TYPE_10__ {int sch_no; } ;
struct TYPE_14__ {scalar_t__ cda; int count; int flags; int cmd_code; } ;
struct TYPE_9__ {int count; int cmd; } ;
struct qdio_irq {scalar_t__ state; int setup_mutex; TYPE_6__ qib; TYPE_5__ ssqd_desc; TYPE_3__ schid; TYPE_7__ ccw; scalar_t__ qdr; TYPE_2__ equeue; } ;
struct qdio_initialize {struct ccw_device* cdev; } ;
struct ccw_device {TYPE_4__* private; } ;
typedef scalar_t__ addr_t ;
struct TYPE_8__ {int sch_no; } ;
struct TYPE_11__ {scalar_t__ state; int wait_q; struct qdio_irq* qdio_data; TYPE_1__ schid; } ;


 int CCW_FLAG_SLI ;
 int DBF_ERROR (char*,int) ;
 int DBF_EVENT (char*,int ) ;
 scalar_t__ DEV_STATE_ONLINE ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int HZ ;
 int QDIO_DOING_ESTABLISH ;
 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 scalar_t__ QDIO_IRQ_STATE_ERR ;
 scalar_t__ QDIO_IRQ_STATE_ESTABLISHED ;
 int ccw_device_set_options_mask (struct ccw_device*,int ) ;
 int ccw_device_start (struct ccw_device*,TYPE_7__*,int ,int ,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_detect_hsicq (struct qdio_irq*) ;
 int qdio_establish_thinint (struct qdio_irq*) ;
 int qdio_init_buf_states (struct qdio_irq*) ;
 int qdio_print_subchannel_info (struct qdio_irq*,struct ccw_device*) ;
 int qdio_setup_debug_entries (struct qdio_irq*,struct ccw_device*) ;
 int qdio_setup_irq (struct qdio_initialize*) ;
 int qdio_setup_ssqd_info (struct qdio_irq*) ;
 int qdio_shutdown (struct ccw_device*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int qdio_establish(struct qdio_initialize *init_data)
{
 struct qdio_irq *irq_ptr;
 struct ccw_device *cdev = init_data->cdev;
 unsigned long saveflags;
 int rc;

 DBF_EVENT("qestablish:%4x", cdev->private->schid.sch_no);

 irq_ptr = cdev->private->qdio_data;
 if (!irq_ptr)
  return -ENODEV;

 if (cdev->private->state != DEV_STATE_ONLINE)
  return -EINVAL;

 mutex_lock(&irq_ptr->setup_mutex);
 qdio_setup_irq(init_data);

 rc = qdio_establish_thinint(irq_ptr);
 if (rc) {
  mutex_unlock(&irq_ptr->setup_mutex);
  qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
  return rc;
 }


 irq_ptr->ccw.cmd_code = irq_ptr->equeue.cmd;
 irq_ptr->ccw.flags = CCW_FLAG_SLI;
 irq_ptr->ccw.count = irq_ptr->equeue.count;
 irq_ptr->ccw.cda = (u32)((addr_t)irq_ptr->qdr);

 spin_lock_irqsave(get_ccwdev_lock(cdev), saveflags);
 ccw_device_set_options_mask(cdev, 0);

 rc = ccw_device_start(cdev, &irq_ptr->ccw, QDIO_DOING_ESTABLISH, 0, 0);
 if (rc) {
  DBF_ERROR("%4x est IO ERR", irq_ptr->schid.sch_no);
  DBF_ERROR("rc:%4x", rc);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), saveflags);

 if (rc) {
  mutex_unlock(&irq_ptr->setup_mutex);
  qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
  return rc;
 }

 wait_event_interruptible_timeout(cdev->private->wait_q,
  irq_ptr->state == QDIO_IRQ_STATE_ESTABLISHED ||
  irq_ptr->state == QDIO_IRQ_STATE_ERR, HZ);

 if (irq_ptr->state != QDIO_IRQ_STATE_ESTABLISHED) {
  mutex_unlock(&irq_ptr->setup_mutex);
  qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
  return -EIO;
 }

 qdio_setup_ssqd_info(irq_ptr);
 DBF_EVENT("qDmmwc:%2x", irq_ptr->ssqd_desc.mmwc);
 DBF_EVENT("qib ac:%4x", irq_ptr->qib.ac);

 qdio_detect_hsicq(irq_ptr);


 qdio_init_buf_states(irq_ptr);

 mutex_unlock(&irq_ptr->setup_mutex);
 qdio_print_subchannel_info(irq_ptr, cdev);
 qdio_setup_debug_entries(irq_ptr, cdev);
 return 0;
}
