
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int priv_flags; } ;


 int ENIC_SRIOV_ENABLED ;

int enic_sriov_enabled(struct enic *enic)
{
 return (enic->priv_flags & ENIC_SRIOV_ENABLED) ? 1 : 0;
}
