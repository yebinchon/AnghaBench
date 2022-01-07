
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_srq {int uobject; } ;


 int put_uobj_read (int ) ;

__attribute__((used)) static void put_srq_read(struct ib_srq *srq)
{
 put_uobj_read(srq->uobject);
}
