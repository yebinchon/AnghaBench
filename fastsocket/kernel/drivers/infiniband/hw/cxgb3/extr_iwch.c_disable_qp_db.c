
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_qp {int wq; } ;


 int cxio_disable_wq_db (int *) ;

__attribute__((used)) static int disable_qp_db(int id, void *p, void *data)
{
 struct iwch_qp *qhp = p;

 cxio_disable_wq_db(&qhp->wq);
 return 0;
}
