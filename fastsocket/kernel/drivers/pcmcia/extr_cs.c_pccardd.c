
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {unsigned int thread_events; int dev; int skt_mutex; int thread_lock; int thread_done; int * thread; int socket; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_socket ) (struct pcmcia_socket*,int *) ;int (* init ) (struct pcmcia_socket*) ;} ;


 int CS_EVENT_BATTERY_DEAD ;
 int CS_EVENT_BATTERY_LOW ;
 int CS_EVENT_PRI_LOW ;
 int CS_EVENT_READY_CHANGE ;
 int KERN_WARNING ;
 unsigned int SS_BATDEAD ;
 unsigned int SS_BATWARN ;
 unsigned int SS_DETECT ;
 unsigned int SS_READY ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int complete (int *) ;
 int * current ;
 int dead_socket ;
 int dev_printk (int ,int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int device_register (int *) ;
 int device_unregister (int *) ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_sysfs_add_socket (int *) ;
 int pccard_sysfs_remove_socket (int *) ;
 int schedule () ;
 int send_event (struct pcmcia_socket*,int ,int ) ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int socket_detect_change (struct pcmcia_socket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*,int *) ;
 int try_to_freeze () ;

__attribute__((used)) static int pccardd(void *__skt)
{
 struct pcmcia_socket *skt = __skt;
 int ret;

 skt->thread = current;
 skt->socket = dead_socket;
 skt->ops->init(skt);
 skt->ops->set_socket(skt, &skt->socket);


 ret = device_register(&skt->dev);
 if (ret) {
  dev_printk(KERN_WARNING, &skt->dev,
      "PCMCIA: unable to register socket\n");
  skt->thread = ((void*)0);
  complete(&skt->thread_done);
  return 0;
 }
 ret = pccard_sysfs_add_socket(&skt->dev);
 if (ret)
  dev_warn(&skt->dev, "err %d adding socket attributes\n", ret);

 complete(&skt->thread_done);

 set_freezable();
 for (;;) {
  unsigned long flags;
  unsigned int events;

  set_current_state(TASK_INTERRUPTIBLE);

  spin_lock_irqsave(&skt->thread_lock, flags);
  events = skt->thread_events;
  skt->thread_events = 0;
  spin_unlock_irqrestore(&skt->thread_lock, flags);

  if (events) {
   mutex_lock(&skt->skt_mutex);
   if (events & SS_DETECT)
    socket_detect_change(skt);
   if (events & SS_BATDEAD)
    send_event(skt, CS_EVENT_BATTERY_DEAD, CS_EVENT_PRI_LOW);
   if (events & SS_BATWARN)
    send_event(skt, CS_EVENT_BATTERY_LOW, CS_EVENT_PRI_LOW);
   if (events & SS_READY)
    send_event(skt, CS_EVENT_READY_CHANGE, CS_EVENT_PRI_LOW);
   mutex_unlock(&skt->skt_mutex);
   continue;
  }

  if (kthread_should_stop())
   break;

  schedule();
  try_to_freeze();
 }

 set_current_state(TASK_RUNNING);


 pccard_sysfs_remove_socket(&skt->dev);
 device_unregister(&skt->dev);

 return 0;
}
