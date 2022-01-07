
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cn_dev {int cbdev; } ;
struct cb_id {int dummy; } ;


 int EAGAIN ;
 struct cn_dev cdev ;
 int cn_already_initialized ;
 int cn_queue_add_callback (int ,char*,struct cb_id*,void (*) (struct cn_msg*,struct netlink_skb_parms*)) ;

int cn_add_callback(struct cb_id *id, char *name,
      void (*callback)(struct cn_msg *, struct netlink_skb_parms *))
{
 int err;
 struct cn_dev *dev = &cdev;

 if (!cn_already_initialized)
  return -EAGAIN;

 err = cn_queue_add_callback(dev->cbdev, name, id, callback);
 if (err)
  return err;

 return 0;
}
