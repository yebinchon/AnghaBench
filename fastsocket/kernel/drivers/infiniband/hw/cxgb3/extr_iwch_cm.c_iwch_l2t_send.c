
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {scalar_t__ ulp; } ;
struct sk_buff {int dummy; } ;
struct l2t_entry {int dummy; } ;
struct cxio_rdev {int dummy; } ;


 int EIO ;
 scalar_t__ cxio_fatal_error (struct cxio_rdev*) ;
 int kfree_skb (struct sk_buff*) ;
 int l2t_send (struct t3cdev*,struct sk_buff*,struct l2t_entry*) ;

__attribute__((used)) static int iwch_l2t_send(struct t3cdev *tdev, struct sk_buff *skb, struct l2t_entry *l2e)
{
 int error = 0;
 struct cxio_rdev *rdev;

 rdev = (struct cxio_rdev *)tdev->ulp;
 if (cxio_fatal_error(rdev)) {
  kfree_skb(skb);
  return -EIO;
 }
 error = l2t_send(tdev, skb, l2e);
 if (error < 0)
  kfree_skb(skb);
 return error;
}
