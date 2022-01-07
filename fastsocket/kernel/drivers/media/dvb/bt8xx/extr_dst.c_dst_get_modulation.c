
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int modulation; } ;
typedef int fe_modulation_t ;



__attribute__((used)) static fe_modulation_t dst_get_modulation(struct dst_state *state)
{
 return state->modulation;
}
