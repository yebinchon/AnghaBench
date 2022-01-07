
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct maple_device {TYPE_1__* mq; } ;
typedef int __be32 ;
struct TYPE_2__ {size_t length; int list; void* sendbuf; int command; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_be32 (int ) ;
 void* kzalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 int maple_waitq ;
 int maple_wlist_lock ;
 int memcpy (void*,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int maple_add_packet(struct maple_device *mdev, u32 function, u32 command,
 size_t length, void *data)
{
 int ret = 0;
 void *sendbuf = ((void*)0);

 if (length) {
  sendbuf = kzalloc(length * 4, GFP_KERNEL);
  if (!sendbuf) {
   ret = -ENOMEM;
   goto out;
  }
  ((__be32 *)sendbuf)[0] = cpu_to_be32(function);
 }

 mdev->mq->command = command;
 mdev->mq->length = length;
 if (length > 1)
  memcpy(sendbuf + 4, data, (length - 1) * 4);
 mdev->mq->sendbuf = sendbuf;

 mutex_lock(&maple_wlist_lock);
 list_add_tail(&mdev->mq->list, &maple_waitq);
 mutex_unlock(&maple_wlist_lock);
out:
 return ret;
}
