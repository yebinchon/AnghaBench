
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct conf_writedata* private_data; TYPE_1__* f_cred; } ;
struct conf_writedata {scalar_t__ state; int card; } ;
struct TYPE_6__ {int debug_flags; struct TYPE_6__* next; struct proc_dir_entry* procconf; } ;
typedef TYPE_2__ hysdn_card ;
struct TYPE_5__ {int fsgid; int fsuid; } ;


 scalar_t__ CONF_STATE_POF ;
 int ENODEV ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int LOG_PROC_ALL ;
 int LOG_PROC_OPEN ;
 struct proc_dir_entry* PDE (struct inode*) ;
 TYPE_2__* card_root ;
 int hysdn_addlog (TYPE_2__*,char*,int ,int ,int) ;
 int kfree (struct conf_writedata*) ;
 int lock_kernel () ;
 int pof_write_close (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int
hysdn_conf_close(struct inode *ino, struct file *filep)
{
 hysdn_card *card;
 struct conf_writedata *cnf;
 int retval = 0;
 struct proc_dir_entry *pd;

 lock_kernel();

 card = card_root;
 while (card) {
  pd = card->procconf;
  if (pd == PDE(ino))
   break;
  card = card->next;
 }
 if (!card) {
  unlock_kernel();
  return (-ENODEV);
 }
 if (card->debug_flags & (LOG_PROC_OPEN | LOG_PROC_ALL))
  hysdn_addlog(card, "config close for uid=%d gid=%d mode=0x%x",
        filep->f_cred->fsuid, filep->f_cred->fsgid,
        filep->f_mode);

 if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE) {

  if (filep->private_data) {
   cnf = filep->private_data;

   if (cnf->state == CONF_STATE_POF)
    retval = pof_write_close(cnf->card);
   kfree(filep->private_data);

  }
 } else if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ) {


  kfree(filep->private_data);
 }
 unlock_kernel();
 return (retval);
}
