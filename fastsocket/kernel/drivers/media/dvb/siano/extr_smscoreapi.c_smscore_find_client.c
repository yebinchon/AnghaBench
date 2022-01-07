
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_idlist_t {int id; int data_type; } ;
struct list_head {struct list_head* next; } ;
struct smscore_device_t {int clientslock; struct list_head clients; } ;
struct smscore_client_t {struct list_head idlist; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct
smscore_client_t *smscore_find_client(struct smscore_device_t *coredev,
          int data_type, int id)
{
 struct smscore_client_t *client = ((void*)0);
 struct list_head *next, *first;
 unsigned long flags;
 struct list_head *firstid, *nextid;


 spin_lock_irqsave(&coredev->clientslock, flags);
 first = &coredev->clients;
 for (next = first->next;
      (next != first) && !client;
      next = next->next) {
  firstid = &((struct smscore_client_t *)next)->idlist;
  for (nextid = firstid->next;
       nextid != firstid;
       nextid = nextid->next) {
   if ((((struct smscore_idlist_t *)nextid)->id == id) &&
       (((struct smscore_idlist_t *)nextid)->data_type == data_type ||
       (((struct smscore_idlist_t *)nextid)->data_type == 0))) {
    client = (struct smscore_client_t *) next;
    break;
   }
  }
 }
 spin_unlock_irqrestore(&coredev->clientslock, flags);
 return client;
}
