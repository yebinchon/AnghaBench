
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int phase; } ;
struct pp_struct {int * pdev; int irq_wait; int irqc; scalar_t__ irqresponse; scalar_t__ flags; TYPE_1__ state; } ;
struct inode {int dummy; } ;
struct file {struct pp_struct* private_data; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IEEE1284_MODE_COMPAT ;
 unsigned int PARPORT_MAX ;
 int atomic_set (int *,int ) ;
 int cycle_kernel_lock () ;
 unsigned int iminor (struct inode*) ;
 int init_phase (int ) ;
 int init_waitqueue_head (int *) ;
 struct pp_struct* kmalloc (int,int ) ;

__attribute__((used)) static int pp_open (struct inode * inode, struct file * file)
{
 unsigned int minor = iminor(inode);
 struct pp_struct *pp;

 cycle_kernel_lock();
 if (minor >= PARPORT_MAX)
  return -ENXIO;

 pp = kmalloc (sizeof (struct pp_struct), GFP_KERNEL);
 if (!pp)
  return -ENOMEM;

 pp->state.mode = IEEE1284_MODE_COMPAT;
 pp->state.phase = init_phase (pp->state.mode);
 pp->flags = 0;
 pp->irqresponse = 0;
 atomic_set (&pp->irqc, 0);
 init_waitqueue_head (&pp->irq_wait);





 pp->pdev = ((void*)0);
 file->private_data = pp;

 return 0;
}
