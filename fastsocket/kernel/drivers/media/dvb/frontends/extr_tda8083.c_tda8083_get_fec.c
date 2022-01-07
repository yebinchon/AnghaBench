
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tda8083_state {int dummy; } ;
typedef int fe_code_rate_t ;
 int tda8083_readreg (struct tda8083_state*,int) ;

__attribute__((used)) static fe_code_rate_t tda8083_get_fec (struct tda8083_state* state)
{
 u8 index;
 static fe_code_rate_t fec_tab [] = { 128, 135, 134, 133,
           132, 131, 130, 129 };

 index = tda8083_readreg(state, 0x0e) & 0x07;

 return fec_tab [index];
}
