
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtl {int lock; scalar_t__ buf_entries; int * buf; } ;


 int dtl_stop (struct dtl*) ;
 int kfree (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dtl_disable(struct dtl *dtl)
{
 spin_lock(&dtl->lock);
 dtl_stop(dtl);

 kfree(dtl->buf);
 dtl->buf = ((void*)0);
 dtl->buf_entries = 0;
 spin_unlock(&dtl->lock);
}
