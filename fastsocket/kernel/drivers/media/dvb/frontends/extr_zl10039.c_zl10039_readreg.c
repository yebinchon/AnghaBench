
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zl10039_state {int dummy; } ;
typedef enum zl10039_reg_addr { ____Placeholder_zl10039_reg_addr } zl10039_reg_addr ;


 int zl10039_read (struct zl10039_state*,int const,int *,int) ;

__attribute__((used)) static inline int zl10039_readreg(struct zl10039_state *state,
    const enum zl10039_reg_addr reg, u8 *val)
{
 return zl10039_read(state, reg, val, 1);
}
