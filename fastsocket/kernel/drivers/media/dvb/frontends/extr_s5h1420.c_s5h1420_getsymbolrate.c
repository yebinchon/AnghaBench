
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5h1420_state {int symbol_rate; } ;



__attribute__((used)) static u32 s5h1420_getsymbolrate(struct s5h1420_state* state)
{
 return state->symbol_rate;
}
