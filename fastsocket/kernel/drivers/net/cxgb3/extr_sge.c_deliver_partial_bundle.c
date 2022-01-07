
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int (* recv ) (struct t3cdev*,struct sk_buff**,int) ;} ;
struct sk_buff {int dummy; } ;
struct sge_rspq {int offload_bundles; } ;


 int stub1 (struct t3cdev*,struct sk_buff**,int) ;

__attribute__((used)) static inline void deliver_partial_bundle(struct t3cdev *tdev,
       struct sge_rspq *q,
       struct sk_buff *skbs[], int n)
{
 if (n) {
  q->offload_bundles++;
  tdev->recv(tdev, skbs, n);
 }
}
