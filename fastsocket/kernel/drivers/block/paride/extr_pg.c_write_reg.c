
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int pi; } ;


 int pi_write_regr (int ,int ,int,int) ;

__attribute__((used)) static inline void write_reg(struct pg *dev, int reg, int val)
{
 pi_write_regr(dev->pi, 0, reg, val);
}
