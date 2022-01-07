
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aob {int dummy; } ;
struct TYPE_2__ {int (* eadm_start ) (struct aob*) ;} ;


 TYPE_1__* eadm_ops ;
 int stub1 (struct aob*) ;

int scm_start_aob(struct aob *aob)
{
 return eadm_ops->eadm_start(aob);
}
