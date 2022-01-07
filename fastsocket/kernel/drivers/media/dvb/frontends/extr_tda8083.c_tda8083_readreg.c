
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda8083_state {int dummy; } ;


 int tda8083_readregs (struct tda8083_state*,int ,int *,int) ;

__attribute__((used)) static inline u8 tda8083_readreg (struct tda8083_state* state, u8 reg)
{
 u8 val;

 tda8083_readregs (state, reg, &val, 1);

 return val;
}
