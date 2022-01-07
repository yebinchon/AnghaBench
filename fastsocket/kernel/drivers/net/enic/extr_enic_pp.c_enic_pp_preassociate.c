
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic_port_profile {int dummy; } ;
struct enic {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int enic_pp_preassociate(struct enic *enic, int vf,
 struct enic_port_profile *prev_pp, int *restore_pp)
{
 return -EOPNOTSUPP;
}
