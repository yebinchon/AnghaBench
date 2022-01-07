
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mconsole_output {int list; struct mc_request* req; } ;
struct mc_request {int dummy; } ;


 int client_lock ;
 int clients ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mconsole_reply_len (struct mc_request*,char*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void stub1 (void*) ;

__attribute__((used)) static void with_console(struct mc_request *req, void (*proc)(void *),
    void *arg)
{
 struct mconsole_output entry;
 unsigned long flags;

 entry.req = req;
 spin_lock_irqsave(&client_lock, flags);
 list_add(&entry.list, &clients);
 spin_unlock_irqrestore(&client_lock, flags);

 (*proc)(arg);

 mconsole_reply_len(req, "", 0, 0, 0);

 spin_lock_irqsave(&client_lock, flags);
 list_del(&entry.list);
 spin_unlock_irqrestore(&client_lock, flags);
}
