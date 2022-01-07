
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int resource_setup_done; int state; int skt_mutex; TYPE_1__* callback; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int owner; int (* requery ) (struct pcmcia_socket*,int ) ;} ;


 size_t EINVAL ;
 int SOCKET_CARDBUS ;
 int SOCKET_PRESENT ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pcmcia_socket*,int ) ;
 struct pcmcia_socket* to_socket (struct device*) ;
 scalar_t__ try_module_get (int ) ;

__attribute__((used)) static ssize_t pccard_store_resource(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 unsigned long flags;
 struct pcmcia_socket *s = to_socket(dev);

 if (!count)
  return -EINVAL;

 spin_lock_irqsave(&s->lock, flags);
 if (!s->resource_setup_done)
  s->resource_setup_done = 1;
 spin_unlock_irqrestore(&s->lock, flags);

 mutex_lock(&s->skt_mutex);
 if ((s->callback) &&
     (s->state & SOCKET_PRESENT) &&
     !(s->state & SOCKET_CARDBUS)) {
  if (try_module_get(s->callback->owner)) {
   s->callback->requery(s, 0);
   module_put(s->callback->owner);
  }
 }
 mutex_unlock(&s->skt_mutex);

 return count;
}
