
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int IntType; scalar_t__ Attributes; } ;
struct TYPE_7__ {int * Handler; int IRQInfo1; int Attributes; } ;
struct pcmcia_device {TYPE_2__ conf; TYPE_1__ irq; TYPE_3__* priv; } ;
struct TYPE_10__ {int close_delay; int closing_wait; int * ops; } ;
struct TYPE_9__ {int max_frame_size; int imra_value; int imrb_value; int pim_value; struct pcmcia_device* p_dev; int idle_mode; int params; int netlock; int lock; int event_wait_q; int status_event_wait_q; TYPE_4__ port; int task; int magic; } ;
typedef int MGSL_PARAMS ;
typedef TYPE_3__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HDLC_TXIDLE_FLAGS ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int INT_MEMORY_AND_IO ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int MGSLPC_MAGIC ;
 int bh_handler ;
 scalar_t__ debug_level ;
 int default_params ;
 int init_waitqueue_head (int *) ;
 TYPE_3__* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mgslpc_add_device (TYPE_3__*) ;
 int mgslpc_config (struct pcmcia_device*) ;
 int mgslpc_port_ops ;
 int printk (char*) ;
 int spin_lock_init (int *) ;
 int tty_port_init (TYPE_4__*) ;

__attribute__((used)) static int mgslpc_probe(struct pcmcia_device *link)
{
    MGSLPC_INFO *info;
    int ret;

    if (debug_level >= DEBUG_LEVEL_INFO)
     printk("mgslpc_attach\n");

    info = kzalloc(sizeof(MGSLPC_INFO), GFP_KERNEL);
    if (!info) {
     printk("Error can't allocate device instance data\n");
     return -ENOMEM;
    }

    info->magic = MGSLPC_MAGIC;
    tty_port_init(&info->port);
    info->port.ops = &mgslpc_port_ops;
    INIT_WORK(&info->task, bh_handler);
    info->max_frame_size = 4096;
    info->port.close_delay = 5*HZ/10;
    info->port.closing_wait = 30*HZ;
    init_waitqueue_head(&info->status_event_wait_q);
    init_waitqueue_head(&info->event_wait_q);
    spin_lock_init(&info->lock);
    spin_lock_init(&info->netlock);
    memcpy(&info->params,&default_params,sizeof(MGSL_PARAMS));
    info->idle_mode = HDLC_TXIDLE_FLAGS;
    info->imra_value = 0xffff;
    info->imrb_value = 0xffff;
    info->pim_value = 0xff;

    info->p_dev = link;
    link->priv = info;




    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->irq.Handler = ((void*)0);

    link->conf.Attributes = 0;
    link->conf.IntType = INT_MEMORY_AND_IO;

    ret = mgslpc_config(link);
    if (ret)
     return ret;

    mgslpc_add_device(info);

    return 0;
}
