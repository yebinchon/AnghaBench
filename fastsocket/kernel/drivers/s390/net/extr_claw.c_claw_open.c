
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {unsigned long data; scalar_t__ expires; void* function; } ;
struct net_device {int name; scalar_t__ ml_priv; } ;
struct claw_privbk {scalar_t__ buffs_alloc; int * p_buff_write; int * p_buff_read; int * p_buff_ccw; TYPE_2__* channel; int p_buff_pages_perwrite; struct ccwbk* p_write_active_first; int p_buff_write_num; TYPE_1__* p_env; int p_buff_pages_perread; struct ccwbk* p_read_active_first; int p_buff_read_num; int p_buff_ccw_num; scalar_t__ release_pend; scalar_t__ system_validate_comp; } ;
struct ccwbk {struct ccwbk* next; scalar_t__ p_buffer; } ;
struct ccw_device {int dummy; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int flag; int last_dstat; TYPE_3__* cdev; int claw_state; int wait; scalar_t__ IO_active; scalar_t__ flag_a; int collect_queue; int tasklet; } ;
struct TYPE_5__ {scalar_t__ read_size; scalar_t__ write_size; scalar_t__ packing; int api_type; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int) ;
 void* CLAW_FRAME_SIZE ;
 int CLAW_START_HALT_IO ;
 int CLAW_STOP ;
 int CLAW_TIMER ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 void* DEF_PACK_BUFSIZE ;
 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 int EIO ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ PACKING_ASK ;
 scalar_t__ PAGE_SIZE ;
 size_t READ ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int WRITE ;
 int WS_APPL_NAME_PACKED ;
 int add_timer (struct timer_list*) ;
 int add_wait_queue (int *,int *) ;
 int ccw_check_return_code (TYPE_3__*,int) ;
 int ccw_device_halt (struct ccw_device*,unsigned long) ;
 int claw_clear_busy (struct net_device*) ;
 int claw_irq_tasklet ;
 int claw_set_busy (struct net_device*) ;
 scalar_t__ claw_timer ;
 int current ;
 int del_timer (struct timer_list*) ;
 int dev_info (int *,char*,int ) ;
 int free_pages (unsigned long,int) ;
 int get_ccwdev_lock (TYPE_3__*) ;
 int init_ccw_bk (struct net_device*) ;
 int init_timer (struct timer_list*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ pages_to_order_of_mag (int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ strncmp (int ,int ,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int trace ;
 int wait ;

__attribute__((used)) static int
claw_open(struct net_device *dev)
{

        int rc;
        int i;
        unsigned long saveflags=0;
        unsigned long parm;
        struct claw_privbk *privptr;
 DECLARE_WAITQUEUE(wait, current);
        struct timer_list timer;
        struct ccwbk *p_buf;

 CLAW_DBF_TEXT(4, trace, "open");
 privptr = (struct claw_privbk *)dev->ml_priv;

 if (privptr->buffs_alloc == 0) {
         rc=init_ccw_bk(dev);
         if (rc) {
   CLAW_DBF_TEXT(2, trace, "openmem");
                 return -ENOMEM;
         }
 }
        privptr->system_validate_comp=0;
        privptr->release_pend=0;
 if(strncmp(privptr->p_env->api_type,WS_APPL_NAME_PACKED,6) == 0) {
  privptr->p_env->read_size=DEF_PACK_BUFSIZE;
  privptr->p_env->write_size=DEF_PACK_BUFSIZE;
  privptr->p_env->packing=PACKING_ASK;
 } else {
  privptr->p_env->packing=0;
  privptr->p_env->read_size=CLAW_FRAME_SIZE;
  privptr->p_env->write_size=CLAW_FRAME_SIZE;
 }
        claw_set_busy(dev);
 tasklet_init(&privptr->channel[READ].tasklet, claw_irq_tasklet,
         (unsigned long) &privptr->channel[READ]);
        for ( i = 0; i < 2; i++) {
  CLAW_DBF_TEXT_(2, trace, "opn_ch%d", i);
                init_waitqueue_head(&privptr->channel[i].wait);

  if (i == WRITE)
   skb_queue_head_init(
    &privptr->channel[WRITE].collect_queue);
                privptr->channel[i].flag_a = 0;
                privptr->channel[i].IO_active = 0;
                privptr->channel[i].flag &= ~CLAW_TIMER;
                init_timer(&timer);
                timer.function = (void *)claw_timer;
                timer.data = (unsigned long)(&privptr->channel[i]);
                timer.expires = jiffies + 15*HZ;
                add_timer(&timer);
                spin_lock_irqsave(get_ccwdev_lock(
   privptr->channel[i].cdev), saveflags);
                parm = (unsigned long) &privptr->channel[i];
                privptr->channel[i].claw_state = CLAW_START_HALT_IO;
  rc = 0;
  add_wait_queue(&privptr->channel[i].wait, &wait);
                rc = ccw_device_halt(
   (struct ccw_device *)privptr->channel[i].cdev,parm);
                set_current_state(TASK_INTERRUPTIBLE);
                spin_unlock_irqrestore(
   get_ccwdev_lock(privptr->channel[i].cdev), saveflags);
                schedule();
  set_current_state(TASK_RUNNING);
                remove_wait_queue(&privptr->channel[i].wait, &wait);
                if(rc != 0)
                        ccw_check_return_code(privptr->channel[i].cdev, rc);
                if((privptr->channel[i].flag & CLAW_TIMER) == 0x00)
                        del_timer(&timer);
        }
        if ((((privptr->channel[READ].last_dstat |
  privptr->channel[WRITE].last_dstat) &
           ~(DEV_STAT_CHN_END | DEV_STAT_DEV_END)) != 0x00) ||
           (((privptr->channel[READ].flag |
     privptr->channel[WRITE].flag) & CLAW_TIMER) != 0x00)) {
  dev_info(&privptr->channel[READ].cdev->dev,
   "%s: remote side is not ready\n", dev->name);
  CLAW_DBF_TEXT(2, trace, "notrdy");

                for ( i = 0; i < 2; i++) {
                        spin_lock_irqsave(
    get_ccwdev_lock(privptr->channel[i].cdev),
    saveflags);
                        parm = (unsigned long) &privptr->channel[i];
                        privptr->channel[i].claw_state = CLAW_STOP;
                        rc = ccw_device_halt(
    (struct ccw_device *)&privptr->channel[i].cdev,
    parm);
                        spin_unlock_irqrestore(
    get_ccwdev_lock(privptr->channel[i].cdev),
    saveflags);
                        if (rc != 0) {
                                ccw_check_return_code(
     privptr->channel[i].cdev, rc);
                        }
                }
                free_pages((unsigned long)privptr->p_buff_ccw,
   (int)pages_to_order_of_mag(privptr->p_buff_ccw_num));
                if (privptr->p_env->read_size < PAGE_SIZE) {
                        free_pages((unsigned long)privptr->p_buff_read,
          (int)pages_to_order_of_mag(
            privptr->p_buff_read_num));
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
                if (privptr->p_env->write_size < PAGE_SIZE ) {
                        free_pages((unsigned long)privptr->p_buff_write,
        (int)pages_to_order_of_mag(
         privptr->p_buff_write_num));
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
  privptr->buffs_alloc = 0;
  privptr->channel[READ].flag= 0x00;
  privptr->channel[WRITE].flag = 0x00;
                privptr->p_buff_ccw=((void*)0);
                privptr->p_buff_read=((void*)0);
                privptr->p_buff_write=((void*)0);
                claw_clear_busy(dev);
  CLAW_DBF_TEXT(2, trace, "open EIO");
                return -EIO;
        }



        claw_clear_busy(dev);
 CLAW_DBF_TEXT(4, trace, "openok");
        return 0;
}
