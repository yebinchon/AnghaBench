
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_event {void* private_data; int private_data_len; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 void* kmemdup (void*,int ,int ) ;

__attribute__((used)) static int copy_private_data(struct iw_cm_event *event)
{
 void *p;

 p = kmemdup(event->private_data, event->private_data_len, GFP_ATOMIC);
 if (!p)
  return -ENOMEM;
 event->private_data = p;
 return 0;
}
