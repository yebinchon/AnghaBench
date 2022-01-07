
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_adapter {int dummy; } ;


 int pi_read_regr (struct pi_adapter*,int ,int) ;

__attribute__((used)) static inline int read_reg(struct pi_adapter *pi, int reg)
{
 return pi_read_regr(pi, 0, reg);
}
