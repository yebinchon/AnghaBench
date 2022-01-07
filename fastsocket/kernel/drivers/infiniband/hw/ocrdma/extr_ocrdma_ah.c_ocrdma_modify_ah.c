
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ah_attr {int dummy; } ;
struct ib_ah {int dummy; } ;


 int ENOSYS ;

int ocrdma_modify_ah(struct ib_ah *ibah, struct ib_ah_attr *attr)
{

 return -ENOSYS;
}
