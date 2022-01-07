
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct pcmcia_device {int open; } ;
struct net_device {unsigned int base_addr; int irq; int name; } ;
struct TYPE_6__ {scalar_t__ expires; scalar_t__ data; int * function; } ;
struct TYPE_5__ {int link_status; TYPE_2__ watchdog; struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ axnet_dev_t ;


 int DEBUG (int,char*,int ) ;
 scalar_t__ EN0_ISR ;
 int ENODEV ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 TYPE_1__* PRIV (struct net_device*) ;
 int add_timer (TYPE_2__*) ;
 int ax_open (struct net_device*) ;
 int ei_irq_wrapper ;
 int ei_watchdog ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int outb_p (int,scalar_t__) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static int axnet_open(struct net_device *dev)
{
    int ret;
    axnet_dev_t *info = PRIV(dev);
    struct pcmcia_device *link = info->p_dev;
    unsigned int nic_base = dev->base_addr;

    DEBUG(2, "axnet_open('%s')\n", dev->name);

    if (!pcmcia_dev_present(link))
 return -ENODEV;

    outb_p(0xFF, nic_base + EN0_ISR);
    ret = request_irq(dev->irq, ei_irq_wrapper, IRQF_SHARED, "axnet_cs", dev);
    if (ret)
     return ret;

    link->open++;

    info->link_status = 0x00;
    init_timer(&info->watchdog);
    info->watchdog.function = &ei_watchdog;
    info->watchdog.data = (u_long)dev;
    info->watchdog.expires = jiffies + HZ;
    add_timer(&info->watchdog);

    return ax_open(dev);
}
