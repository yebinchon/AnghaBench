
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct procdata {int rd_queue; struct proc_dir_entry* log; } ;
struct proc_dir_entry {int dummy; } ;
struct log_data {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {int f_mode; scalar_t__ private_data; TYPE_2__ f_path; } ;
typedef int poll_table ;
struct TYPE_7__ {struct TYPE_7__* next; struct procdata* proclog; } ;
typedef TYPE_3__ hysdn_card ;
struct TYPE_5__ {int d_inode; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 struct proc_dir_entry* PDE (int ) ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 TYPE_3__* card_root ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int
hysdn_log_poll(struct file *file, poll_table * wait)
{
 unsigned int mask = 0;
 struct proc_dir_entry *pde = PDE(file->f_path.dentry->d_inode);
 hysdn_card *card;
 struct procdata *pd = ((void*)0);

 if ((file->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE)
  return (mask);


 card = card_root;
 while (card) {
  pd = card->proclog;
  if (pd->log == pde)
   break;
  card = card->next;
 }
 if (!card)
  return (mask);

 poll_wait(file, &(pd->rd_queue), wait);

 if (*((struct log_data **) file->private_data))
  mask |= POLLIN | POLLRDNORM;

 return mask;
}
