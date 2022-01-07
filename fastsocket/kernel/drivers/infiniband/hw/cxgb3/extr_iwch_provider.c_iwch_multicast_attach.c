
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct ib_qp {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int iwch_multicast_attach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 return -ENOSYS;
}
