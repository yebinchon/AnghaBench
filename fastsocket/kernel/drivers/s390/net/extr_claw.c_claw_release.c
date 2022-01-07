
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {int name; scalar_t__ ml_priv; } ;
struct claw_privbk {int release_pend; int system_validate_comp; int buffs_alloc; int mtc_logical_link; int mtc_skipping; TYPE_1__* channel; scalar_t__ mtc_offset; int * p_write_active_last; int write_free_count; struct ccwbk* p_write_free_chain; struct ccwbk* p_write_active_first; struct ccwbk* p_read_active_first; int * p_buff_write; int * p_buff_read; int * p_buff_ccw; int p_buff_pages_perwrite; int p_buff_write_num; TYPE_2__* p_env; int p_buff_pages_perread; int p_buff_read_num; int p_buff_ccw_num; int * pk_skb; } ;
struct TYPE_9__ {int length; int opcode; int flag; } ;
struct ccwbk {struct ccwbk* next; TYPE_3__ header; scalar_t__ p_buffer; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {scalar_t__ read_size; scalar_t__ write_size; } ;
struct TYPE_7__ {int last_dstat; TYPE_4__* cdev; int wait; int collect_queue; scalar_t__ IO_active; int claw_state; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_PENDING ;
 int CLAW_STOP ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 scalar_t__ PAGE_SIZE ;
 size_t READ ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TB_STOP ;
 int WRITE ;
 int add_wait_queue (int *,int *) ;
 int ccw_check_return_code (TYPE_4__*,int) ;
 int ccw_device_halt (TYPE_4__*,unsigned long) ;
 int claw_purge_skb_queue (int *) ;
 int claw_setbit_busy (int ,struct net_device*) ;
 int current ;
 int dev_kfree_skb_any (int *) ;
 int dev_warn (int *,char*,int ,int,int) ;
 int free_pages (unsigned long,int) ;
 int get_ccwdev_lock (TYPE_4__*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ pages_to_order_of_mag (int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;
 int wait ;

__attribute__((used)) static int
claw_release(struct net_device *dev)
{
        int rc;
        int i;
        unsigned long saveflags;
        unsigned long parm;
        struct claw_privbk *privptr;
        DECLARE_WAITQUEUE(wait, current);
        struct ccwbk* p_this_ccw;
        struct ccwbk* p_buf;

 if (!dev)
                return 0;
 privptr = (struct claw_privbk *)dev->ml_priv;
        if (!privptr)
                return 0;
 CLAW_DBF_TEXT(4, trace, "release");
        privptr->release_pend=1;
        claw_setbit_busy(TB_STOP,dev);
        for ( i = 1; i >=0 ; i--) {
                spin_lock_irqsave(
   get_ccwdev_lock(privptr->channel[i].cdev), saveflags);

   privptr->channel[i].claw_state = CLAW_STOP;
                privptr->channel[i].IO_active = 0;
                parm = (unsigned long) &privptr->channel[i];
  if (i == WRITE)
   claw_purge_skb_queue(
    &privptr->channel[WRITE].collect_queue);
                rc = ccw_device_halt (privptr->channel[i].cdev, parm);
         if (privptr->system_validate_comp==0x00)
                   init_waitqueue_head(&privptr->channel[i].wait);
                add_wait_queue(&privptr->channel[i].wait, &wait);
                set_current_state(TASK_INTERRUPTIBLE);
         spin_unlock_irqrestore(
   get_ccwdev_lock(privptr->channel[i].cdev), saveflags);
         schedule();
  set_current_state(TASK_RUNNING);
         remove_wait_queue(&privptr->channel[i].wait, &wait);
         if (rc != 0) {
                        ccw_check_return_code(privptr->channel[i].cdev, rc);
                }
        }
 if (privptr->pk_skb != ((void*)0)) {
  dev_kfree_skb_any(privptr->pk_skb);
  privptr->pk_skb = ((void*)0);
 }
 if(privptr->buffs_alloc != 1) {
  CLAW_DBF_TEXT(4, trace, "none2fre");
  return 0;
 }
 CLAW_DBF_TEXT(4, trace, "freebufs");
 if (privptr->p_buff_ccw != ((void*)0)) {
         free_pages((unsigned long)privptr->p_buff_ccw,
          (int)pages_to_order_of_mag(privptr->p_buff_ccw_num));
 }
 CLAW_DBF_TEXT(4, trace, "freeread");
        if (privptr->p_env->read_size < PAGE_SIZE) {
     if (privptr->p_buff_read != ((void*)0)) {
                free_pages((unsigned long)privptr->p_buff_read,
        (int)pages_to_order_of_mag(privptr->p_buff_read_num));
  }
        }
        else {
                p_buf=privptr->p_read_active_first;
                while (p_buf!=((void*)0)) {
                        free_pages((unsigned long)p_buf->p_buffer,
        (int)pages_to_order_of_mag(
         privptr->p_buff_pages_perread ));
                        p_buf=p_buf->next;
                }
        }
  CLAW_DBF_TEXT(4, trace, "freewrit");
        if (privptr->p_env->write_size < PAGE_SIZE ) {
                free_pages((unsigned long)privptr->p_buff_write,
        (int)pages_to_order_of_mag(privptr->p_buff_write_num));
        }
        else {
                p_buf=privptr->p_write_active_first;
                while (p_buf!=((void*)0)) {
                        free_pages((unsigned long)p_buf->p_buffer,
         (int)pages_to_order_of_mag(
         privptr->p_buff_pages_perwrite ));
                        p_buf=p_buf->next;
                }
        }
  CLAW_DBF_TEXT(4, trace, "clearptr");
 privptr->buffs_alloc = 0;
        privptr->p_buff_ccw=((void*)0);
        privptr->p_buff_read=((void*)0);
        privptr->p_buff_write=((void*)0);
        privptr->system_validate_comp=0;
        privptr->release_pend=0;

        p_this_ccw=privptr->p_read_active_first;
        while (p_this_ccw!=((void*)0)) {
                p_this_ccw->header.length=0xffff;
                p_this_ccw->header.opcode=0xff;
                p_this_ccw->header.flag=0x00;
                p_this_ccw=p_this_ccw->next;
        }

        while (privptr->p_write_active_first!=((void*)0)) {
                p_this_ccw=privptr->p_write_active_first;
                p_this_ccw->header.flag=CLAW_PENDING;
                privptr->p_write_active_first=p_this_ccw->next;
                p_this_ccw->next=privptr->p_write_free_chain;
                privptr->p_write_free_chain=p_this_ccw;
                ++privptr->write_free_count;
        }
        privptr->p_write_active_last=((void*)0);
        privptr->mtc_logical_link = -1;
        privptr->mtc_skipping = 1;
        privptr->mtc_offset=0;

        if (((privptr->channel[READ].last_dstat |
  privptr->channel[WRITE].last_dstat) &
  ~(DEV_STAT_CHN_END | DEV_STAT_DEV_END)) != 0x00) {
  dev_warn(&privptr->channel[READ].cdev->dev,
   "Deactivating %s completed with incorrect"
   " subchannel status "
   "(read %02x, write %02x)\n",
                dev->name,
  privptr->channel[READ].last_dstat,
  privptr->channel[WRITE].last_dstat);
   CLAW_DBF_TEXT(2, trace, "badclose");
        }
 CLAW_DBF_TEXT(4, trace, "rlsexit");
        return 0;
}
