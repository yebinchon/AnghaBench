
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int fec; } ;
typedef int fe_code_rate_t ;



__attribute__((used)) static fe_code_rate_t dst_get_fec(struct dst_state *state)
{
 return state->fec;
}
