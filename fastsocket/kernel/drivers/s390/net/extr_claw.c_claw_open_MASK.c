#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {unsigned long data; scalar_t__ expires; void* function; } ;
struct net_device {int /*<<< orphan*/  name; scalar_t__ ml_priv; } ;
struct claw_privbk {scalar_t__ buffs_alloc; int /*<<< orphan*/ * p_buff_write; int /*<<< orphan*/ * p_buff_read; int /*<<< orphan*/ * p_buff_ccw; TYPE_2__* channel; int /*<<< orphan*/  p_buff_pages_perwrite; struct ccwbk* p_write_active_first; int /*<<< orphan*/  p_buff_write_num; TYPE_1__* p_env; int /*<<< orphan*/  p_buff_pages_perread; struct ccwbk* p_read_active_first; int /*<<< orphan*/  p_buff_read_num; int /*<<< orphan*/  p_buff_ccw_num; scalar_t__ release_pend; scalar_t__ system_validate_comp; } ;
struct ccwbk {struct ccwbk* next; scalar_t__ p_buffer; } ;
struct ccw_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int flag; int last_dstat; TYPE_3__* cdev; int /*<<< orphan*/  claw_state; int /*<<< orphan*/  wait; scalar_t__ IO_active; scalar_t__ flag_a; int /*<<< orphan*/  collect_queue; int /*<<< orphan*/  tasklet; } ;
struct TYPE_5__ {scalar_t__ read_size; scalar_t__ write_size; scalar_t__ packing; int /*<<< orphan*/  api_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 void* CLAW_FRAME_SIZE ; 
 int /*<<< orphan*/  CLAW_START_HALT_IO ; 
 int /*<<< orphan*/  CLAW_STOP ; 
 int CLAW_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* DEF_PACK_BUFSIZE ; 
 int DEV_STAT_CHN_END ; 
 int DEV_STAT_DEV_END ; 
 int EIO ; 
 int ENOMEM ; 
 int HZ ; 
 scalar_t__ PACKING_ASK ; 
 scalar_t__ PAGE_SIZE ; 
 size_t READ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int WRITE ; 
 int /*<<< orphan*/  WS_APPL_NAME_PACKED ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (struct ccw_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  claw_irq_tasklet ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ claw_timer ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC9 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC25(struct net_device *dev)
{

        int     rc;
        int     i;
        unsigned long       saveflags=0;
        unsigned long       parm;
        struct claw_privbk  *privptr;
	FUNC2(wait, current);
        struct timer_list  timer;
        struct ccwbk *p_buf;

	FUNC0(4, trace, "open");
	privptr = (struct claw_privbk *)dev->ml_priv;
        /*   allocate and initialize CCW blocks */
	if (privptr->buffs_alloc == 0) {
	        rc=FUNC13(dev);
        	if (rc) {
			FUNC0(2, trace, "openmem");
                	return -ENOMEM;
        	}
	}
        privptr->system_validate_comp=0;
        privptr->release_pend=0;
	if(FUNC23(privptr->p_env->api_type,WS_APPL_NAME_PACKED,6) == 0) {
		privptr->p_env->read_size=DEF_PACK_BUFSIZE;
		privptr->p_env->write_size=DEF_PACK_BUFSIZE;
		privptr->p_env->packing=PACKING_ASK;
	} else {
		privptr->p_env->packing=0;
		privptr->p_env->read_size=CLAW_FRAME_SIZE;
		privptr->p_env->write_size=CLAW_FRAME_SIZE;
	}
        FUNC8(dev);
	FUNC24(&privptr->channel[READ].tasklet, claw_irq_tasklet,
        	(unsigned long) &privptr->channel[READ]);
        for ( i = 0; i < 2;  i++) {
		FUNC1(2, trace, "opn_ch%d", i);
                FUNC15(&privptr->channel[i].wait);
		/* skb_queue_head_init(&p_ch->io_queue); */
		if (i == WRITE)
			FUNC20(
				&privptr->channel[WRITE].collect_queue);
                privptr->channel[i].flag_a = 0;
                privptr->channel[i].IO_active = 0;
                privptr->channel[i].flag  &= ~CLAW_TIMER;
                FUNC14(&timer);
                timer.function = (void *)claw_timer;
                timer.data = (unsigned long)(&privptr->channel[i]);
                timer.expires = jiffies + 15*HZ;
                FUNC3(&timer);
                FUNC21(FUNC12(
			privptr->channel[i].cdev), saveflags);
                parm = (unsigned long) &privptr->channel[i];
                privptr->channel[i].claw_state = CLAW_START_HALT_IO;
		rc = 0;
		FUNC4(&privptr->channel[i].wait, &wait);
                rc = FUNC6(
			(struct ccw_device *)privptr->channel[i].cdev,parm);
                FUNC19(TASK_INTERRUPTIBLE);
                FUNC22(
			FUNC12(privptr->channel[i].cdev), saveflags);
                FUNC18();
		FUNC19(TASK_RUNNING);
                FUNC17(&privptr->channel[i].wait, &wait);
                if(rc != 0)
                        FUNC5(privptr->channel[i].cdev, rc);
                if((privptr->channel[i].flag & CLAW_TIMER) == 0x00)
                        FUNC9(&timer);
        }
        if ((((privptr->channel[READ].last_dstat |
		privptr->channel[WRITE].last_dstat) &
           ~(DEV_STAT_CHN_END | DEV_STAT_DEV_END)) != 0x00) ||
           (((privptr->channel[READ].flag |
	   	privptr->channel[WRITE].flag) & CLAW_TIMER) != 0x00)) {
		FUNC10(&privptr->channel[READ].cdev->dev,
			"%s: remote side is not ready\n", dev->name);
		FUNC0(2, trace, "notrdy");

                for ( i = 0; i < 2;  i++) {
                        FUNC21(
				FUNC12(privptr->channel[i].cdev),
				saveflags);
                        parm = (unsigned long) &privptr->channel[i];
                        privptr->channel[i].claw_state = CLAW_STOP;
                        rc = FUNC6(
				(struct ccw_device *)&privptr->channel[i].cdev,
				parm);
                        FUNC22(
				FUNC12(privptr->channel[i].cdev),
				saveflags);
                        if (rc != 0) {
                                FUNC5(
					privptr->channel[i].cdev, rc);
                        }
                }
                FUNC11((unsigned long)privptr->p_buff_ccw,
			(int)FUNC16(privptr->p_buff_ccw_num));
                if (privptr->p_env->read_size < PAGE_SIZE) {
                        FUNC11((unsigned long)privptr->p_buff_read,
			       (int)FUNC16(
			       		privptr->p_buff_read_num));
                }
                else {
                        p_buf=privptr->p_read_active_first;
                        while (p_buf!=NULL) {
                                FUNC11((unsigned long)p_buf->p_buffer,
				      (int)FUNC16(
				      	privptr->p_buff_pages_perread ));
                                p_buf=p_buf->next;
                        }
                }
                if (privptr->p_env->write_size < PAGE_SIZE ) {
                        FUNC11((unsigned long)privptr->p_buff_write,
			     (int)FUNC16(
			     	privptr->p_buff_write_num));
                }
                else {
                        p_buf=privptr->p_write_active_first;
                        while (p_buf!=NULL) {
                                FUNC11((unsigned long)p_buf->p_buffer,
				     (int)FUNC16(
				     	privptr->p_buff_pages_perwrite ));
                                p_buf=p_buf->next;
                        }
                }
		privptr->buffs_alloc = 0;
		privptr->channel[READ].flag= 0x00;
		privptr->channel[WRITE].flag = 0x00;
                privptr->p_buff_ccw=NULL;
                privptr->p_buff_read=NULL;
                privptr->p_buff_write=NULL;
                FUNC7(dev);
		FUNC0(2, trace, "open EIO");
                return -EIO;
        }

        /*   Send SystemValidate command */

        FUNC7(dev);
	FUNC0(4, trace, "openok");
        return 0;
}