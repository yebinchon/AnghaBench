
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct capi_notifier {unsigned int cmd; int work; void* ncci; int applid; void* controller; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct capi_notifier* kmalloc (int,int ) ;
 int notify_handler ;
 int schedule_work (int *) ;

__attribute__((used)) static int notify_push(unsigned int cmd, u32 controller, u16 applid, u32 ncci)
{
 struct capi_notifier *np = kmalloc(sizeof(*np), GFP_ATOMIC);

 if (!np)
  return -ENOMEM;

 INIT_WORK(&np->work, notify_handler);
 np->cmd = cmd;
 np->controller = controller;
 np->applid = applid;
 np->ncci = ncci;

 schedule_work(&np->work);
 return 0;
}
