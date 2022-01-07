
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_message {int sig_flags; scalar_t__ msg_count; int * next_block_to_read; int * last_msg; int * first_msg; struct r3964_message* next; struct pid* pid; int lock; } ;
struct r3964_info {struct r3964_message* firstClient; } ;
struct r3964_client_info {int sig_flags; scalar_t__ msg_count; int * next_block_to_read; int * last_msg; int * first_msg; struct r3964_client_info* next; struct pid* pid; int lock; } ;
struct pid {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int R3964_SIG_ALL ;
 int TRACE_M (char*,struct r3964_message*) ;
 int TRACE_PS (char*,int ) ;
 struct r3964_message* findClient (struct r3964_info*,struct pid*) ;
 struct pid* get_pid (struct pid*) ;
 int kfree (struct r3964_message*) ;
 struct r3964_message* kmalloc (int,int ) ;
 int pid_nr (struct pid*) ;
 int put_pid (struct pid*) ;
 struct r3964_message* remove_msg (struct r3964_info*,struct r3964_message*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int enable_signals(struct r3964_info *pInfo, struct pid *pid, int arg)
{
 struct r3964_client_info *pClient;
 struct r3964_client_info **ppClient;
 struct r3964_message *pMsg;

 if ((arg & R3964_SIG_ALL) == 0) {

  for (ppClient = &pInfo->firstClient; *ppClient;
       ppClient = &(*ppClient)->next) {
   pClient = *ppClient;

   if (pClient->pid == pid) {
    TRACE_PS("removing client %d from client list",
      pid_nr(pid));
    *ppClient = pClient->next;
    while (pClient->msg_count) {
     pMsg = remove_msg(pInfo, pClient);
     if (pMsg) {
      kfree(pMsg);
      TRACE_M("enable_signals - msg "
       "kfree %p", pMsg);
     }
    }
    put_pid(pClient->pid);
    kfree(pClient);
    TRACE_M("enable_signals - kfree %p", pClient);
    return 0;
   }
  }
  return -EINVAL;
 } else {
  pClient = findClient(pInfo, pid);
  if (pClient) {

   pClient->sig_flags = arg;
  } else {

   pClient = kmalloc(sizeof(struct r3964_client_info),
     GFP_KERNEL);
   TRACE_M("enable_signals - kmalloc %p", pClient);
   if (pClient == ((void*)0))
    return -ENOMEM;

   TRACE_PS("add client %d to client list", pid_nr(pid));
   spin_lock_init(&pClient->lock);
   pClient->sig_flags = arg;
   pClient->pid = get_pid(pid);
   pClient->next = pInfo->firstClient;
   pClient->first_msg = ((void*)0);
   pClient->last_msg = ((void*)0);
   pClient->next_block_to_read = ((void*)0);
   pClient->msg_count = 0;
   pInfo->firstClient = pClient;
  }
 }

 return 0;
}
