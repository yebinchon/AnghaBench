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
struct TYPE_8__ {int /*<<< orphan*/  IntType; scalar_t__ Attributes; } ;
struct TYPE_7__ {int /*<<< orphan*/ * Handler; int /*<<< orphan*/  IRQInfo1; int /*<<< orphan*/  Attributes; } ;
struct pcmcia_device {TYPE_2__ conf; TYPE_1__ irq; TYPE_3__* priv; } ;
struct TYPE_10__ {int close_delay; int closing_wait; int /*<<< orphan*/ * ops; } ;
struct TYPE_9__ {int max_frame_size; int imra_value; int imrb_value; int pim_value; struct pcmcia_device* p_dev; int /*<<< orphan*/  idle_mode; int /*<<< orphan*/  params; int /*<<< orphan*/  netlock; int /*<<< orphan*/  lock; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; TYPE_4__ port; int /*<<< orphan*/  task; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  MGSL_PARAMS ;
typedef  TYPE_3__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDLC_TXIDLE_FLAGS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MEMORY_AND_IO ; 
 int /*<<< orphan*/  IRQ_LEVEL_ID ; 
 int /*<<< orphan*/  IRQ_TYPE_DYNAMIC_SHARING ; 
 int /*<<< orphan*/  MGSLPC_MAGIC ; 
 int /*<<< orphan*/  bh_handler ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  default_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  mgslpc_port_ops ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(struct pcmcia_device *link)
{
    MGSLPC_INFO *info;
    int ret;

    if (debug_level >= DEBUG_LEVEL_INFO)
	    FUNC6("mgslpc_attach\n");

    info = FUNC2(sizeof(MGSLPC_INFO), GFP_KERNEL);
    if (!info) {
	    FUNC6("Error can't allocate device instance data\n");
	    return -ENOMEM;
    }

    info->magic = MGSLPC_MAGIC;
    FUNC8(&info->port);
    info->port.ops = &mgslpc_port_ops;
    FUNC0(&info->task, bh_handler);
    info->max_frame_size = 4096;
    info->port.close_delay = 5*HZ/10;
    info->port.closing_wait = 30*HZ;
    FUNC1(&info->status_event_wait_q);
    FUNC1(&info->event_wait_q);
    FUNC7(&info->lock);
    FUNC7(&info->netlock);
    FUNC3(&info->params,&default_params,sizeof(MGSL_PARAMS));
    info->idle_mode = HDLC_TXIDLE_FLAGS;
    info->imra_value = 0xffff;
    info->imrb_value = 0xffff;
    info->pim_value = 0xff;

    info->p_dev = link;
    link->priv = info;

    /* Initialize the struct pcmcia_device structure */

    /* Interrupt setup */
    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
    link->irq.IRQInfo1   = IRQ_LEVEL_ID;
    link->irq.Handler = NULL;

    link->conf.Attributes = 0;
    link->conf.IntType = INT_MEMORY_AND_IO;

    ret = FUNC5(link);
    if (ret)
	    return ret;

    FUNC4(info);

    return 0;
}