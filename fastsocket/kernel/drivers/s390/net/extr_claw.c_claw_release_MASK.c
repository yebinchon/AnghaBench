#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; scalar_t__ ml_priv; } ;
struct claw_privbk {int release_pend; int system_validate_comp; int buffs_alloc; int mtc_logical_link; int mtc_skipping; TYPE_1__* channel; scalar_t__ mtc_offset; int /*<<< orphan*/ * p_write_active_last; int /*<<< orphan*/  write_free_count; struct ccwbk* p_write_free_chain; struct ccwbk* p_write_active_first; struct ccwbk* p_read_active_first; int /*<<< orphan*/ * p_buff_write; int /*<<< orphan*/ * p_buff_read; int /*<<< orphan*/ * p_buff_ccw; int /*<<< orphan*/  p_buff_pages_perwrite; int /*<<< orphan*/  p_buff_write_num; TYPE_2__* p_env; int /*<<< orphan*/  p_buff_pages_perread; int /*<<< orphan*/  p_buff_read_num; int /*<<< orphan*/  p_buff_ccw_num; int /*<<< orphan*/ * pk_skb; } ;
struct TYPE_9__ {int length; int opcode; int flag; } ;
struct ccwbk {struct ccwbk* next; TYPE_3__ header; scalar_t__ p_buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {scalar_t__ read_size; scalar_t__ write_size; } ;
struct TYPE_7__ {int last_dstat; TYPE_4__* cdev; int /*<<< orphan*/  wait; int /*<<< orphan*/  collect_queue; scalar_t__ IO_active; int /*<<< orphan*/  claw_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int CLAW_PENDING ; 
 int /*<<< orphan*/  CLAW_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DEV_STAT_CHN_END ; 
 int DEV_STAT_DEV_END ; 
 scalar_t__ PAGE_SIZE ; 
 size_t READ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TB_STOP ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int FUNC4 (TYPE_4__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC18(struct net_device *dev)
{
        int                rc;
        int                i;
        unsigned long      saveflags;
        unsigned long      parm;
        struct claw_privbk *privptr;
        FUNC1(wait, current);
        struct ccwbk*             p_this_ccw;
        struct ccwbk*             p_buf;

	if (!dev)
                return 0;
	privptr = (struct claw_privbk *)dev->ml_priv;
        if (!privptr)
                return 0;
	FUNC0(4, trace, "release");
        privptr->release_pend=1;
        FUNC6(TB_STOP,dev);
        for ( i = 1; i >=0 ;  i--) {
                FUNC16(
			FUNC10(privptr->channel[i].cdev), saveflags);
             /*   del_timer(&privptr->channel[READ].timer);  */
 		privptr->channel[i].claw_state = CLAW_STOP;
                privptr->channel[i].IO_active = 0;
                parm = (unsigned long) &privptr->channel[i];
		if (i == WRITE)
			FUNC5(
				&privptr->channel[WRITE].collect_queue);
                rc = FUNC4 (privptr->channel[i].cdev, parm);
	        if (privptr->system_validate_comp==0x00)  /* never opened? */
                   FUNC11(&privptr->channel[i].wait);
                FUNC2(&privptr->channel[i].wait, &wait);
                FUNC15(TASK_INTERRUPTIBLE);
	        FUNC17(
			FUNC10(privptr->channel[i].cdev), saveflags);
	        FUNC14();
		FUNC15(TASK_RUNNING);
	        FUNC13(&privptr->channel[i].wait, &wait);
	        if (rc != 0) {
                        FUNC3(privptr->channel[i].cdev, rc);
                }
        }
	if (privptr->pk_skb != NULL) {
		FUNC7(privptr->pk_skb);
		privptr->pk_skb = NULL;
	}
	if(privptr->buffs_alloc != 1) {
		FUNC0(4, trace, "none2fre");
		return 0;
	}
	FUNC0(4, trace, "freebufs");
	if (privptr->p_buff_ccw != NULL) {
        	FUNC9((unsigned long)privptr->p_buff_ccw,
	        	(int)FUNC12(privptr->p_buff_ccw_num));
	}
	FUNC0(4, trace, "freeread");
        if (privptr->p_env->read_size < PAGE_SIZE) {
	    if (privptr->p_buff_read != NULL) {
                FUNC9((unsigned long)privptr->p_buff_read,
		      (int)FUNC12(privptr->p_buff_read_num));
		}
        }
        else {
                p_buf=privptr->p_read_active_first;
                while (p_buf!=NULL) {
                        FUNC9((unsigned long)p_buf->p_buffer,
			     (int)FUNC12(
			     	privptr->p_buff_pages_perread ));
                        p_buf=p_buf->next;
                }
        }
	 FUNC0(4, trace, "freewrit");
        if (privptr->p_env->write_size < PAGE_SIZE ) {
                FUNC9((unsigned long)privptr->p_buff_write,
		      (int)FUNC12(privptr->p_buff_write_num));
        }
        else {
                p_buf=privptr->p_write_active_first;
                while (p_buf!=NULL) {
                        FUNC9((unsigned long)p_buf->p_buffer,
			      (int)FUNC12(
			      privptr->p_buff_pages_perwrite ));
                        p_buf=p_buf->next;
                }
        }
	 FUNC0(4, trace, "clearptr");
	privptr->buffs_alloc = 0;
        privptr->p_buff_ccw=NULL;
        privptr->p_buff_read=NULL;
        privptr->p_buff_write=NULL;
        privptr->system_validate_comp=0;
        privptr->release_pend=0;
        /*      Remove any writes that were pending and reset all reads   */
        p_this_ccw=privptr->p_read_active_first;
        while (p_this_ccw!=NULL) {
                p_this_ccw->header.length=0xffff;
                p_this_ccw->header.opcode=0xff;
                p_this_ccw->header.flag=0x00;
                p_this_ccw=p_this_ccw->next;
        }

        while (privptr->p_write_active_first!=NULL) {
                p_this_ccw=privptr->p_write_active_first;
                p_this_ccw->header.flag=CLAW_PENDING;
                privptr->p_write_active_first=p_this_ccw->next;
                p_this_ccw->next=privptr->p_write_free_chain;
                privptr->p_write_free_chain=p_this_ccw;
                ++privptr->write_free_count;
        }
        privptr->p_write_active_last=NULL;
        privptr->mtc_logical_link = -1;
        privptr->mtc_skipping = 1;
        privptr->mtc_offset=0;

        if (((privptr->channel[READ].last_dstat |
		privptr->channel[WRITE].last_dstat) &
		~(DEV_STAT_CHN_END | DEV_STAT_DEV_END)) != 0x00) {
		FUNC8(&privptr->channel[READ].cdev->dev,
			"Deactivating %s completed with incorrect"
			" subchannel status "
			"(read %02x, write %02x)\n",
                dev->name,
		privptr->channel[READ].last_dstat,
		privptr->channel[WRITE].last_dstat);
		 FUNC0(2, trace, "badclose");
        }
	FUNC0(4, trace, "rlsexit");
        return 0;
}