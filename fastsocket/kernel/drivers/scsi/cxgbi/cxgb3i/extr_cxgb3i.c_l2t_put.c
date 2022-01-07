
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t3cdev {int dummy; } ;
struct cxgbi_sock {int * l2t; TYPE_1__* cdev; } ;
struct TYPE_2__ {scalar_t__ lldev; } ;


 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int l2t_release (struct t3cdev*,int *) ;

__attribute__((used)) static void l2t_put(struct cxgbi_sock *csk)
{
 struct t3cdev *t3dev = (struct t3cdev *)csk->cdev->lldev;

 if (csk->l2t) {
  l2t_release(t3dev, csk->l2t);
  csk->l2t = ((void*)0);
  cxgbi_sock_put(csk);
 }
}
