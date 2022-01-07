
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int fec; } ;
typedef int fe_code_rate_t ;



__attribute__((used)) static int dst_set_fec(struct dst_state *state, fe_code_rate_t fec)
{
 state->fec = fec;
 return 0;
}
