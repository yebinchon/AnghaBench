
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct procdata {int rd_queue; int log_name; int log; } ;
struct TYPE_3__ {void* proclog; int myid; } ;
typedef TYPE_1__ hysdn_card ;


 int GFP_KERNEL ;
 char* PROC_LOG_BASENAME ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int hysdn_proc_entry ;
 int init_waitqueue_head (int *) ;
 struct procdata* kzalloc (int,int ) ;
 int log_fops ;
 int proc_create (int ,int,int ,int *) ;
 int sprintf (int ,char*,char*,int ) ;

int
hysdn_proclog_init(hysdn_card * card)
{
 struct procdata *pd;



 if ((pd = kzalloc(sizeof(struct procdata), GFP_KERNEL)) != ((void*)0)) {
  sprintf(pd->log_name, "%s%d", PROC_LOG_BASENAME, card->myid);
  pd->log = proc_create(pd->log_name,
    S_IFREG | S_IRUGO | S_IWUSR, hysdn_proc_entry,
    &log_fops);

  init_waitqueue_head(&(pd->rd_queue));

  card->proclog = (void *) pd;
 }
 return (0);
}
