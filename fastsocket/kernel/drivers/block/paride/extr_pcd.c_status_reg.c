
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int pi; } ;


 int pi_read_regr (int ,int,int) ;

__attribute__((used)) static inline int status_reg(struct pcd_unit *cd)
{
 return pi_read_regr(cd->pi, 1, 6);
}
