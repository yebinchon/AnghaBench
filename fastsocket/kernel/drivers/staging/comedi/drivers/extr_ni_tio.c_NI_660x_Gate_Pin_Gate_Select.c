
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int ni_660x_max_gate_pin ;

__attribute__((used)) static inline unsigned NI_660x_Gate_Pin_Gate_Select(unsigned n)
{
 BUG_ON(n > ni_660x_max_gate_pin);
 return 0x2 + n;
}
