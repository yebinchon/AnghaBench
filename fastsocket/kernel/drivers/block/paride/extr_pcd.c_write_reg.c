
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int pi; } ;


 int pi_write_regr (int ,int ,int,int) ;

__attribute__((used)) static inline void write_reg(struct pcd_unit *cd, int reg, int val)
{
 pi_write_regr(cd->pi, 0, reg, val);
}
