
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int uobject; } ;


 int put_uobj_read (int ) ;

__attribute__((used)) static void put_qp_read(struct ib_qp *qp)
{
 put_uobj_read(qp->uobject);
}
