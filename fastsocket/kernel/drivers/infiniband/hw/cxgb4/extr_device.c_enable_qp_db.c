
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_qp {int wq; } ;


 int t4_enable_wq_db (int *) ;

__attribute__((used)) static int enable_qp_db(int id, void *p, void *data)
{
 struct c4iw_qp *qp = p;

 t4_enable_wq_db(&qp->wq);
 return 0;
}
