
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_mppe_state {int bits; } ;


 int MPPE_BIT_FLUSHED ;

__attribute__((used)) static void mppe_comp_reset(void *arg)
{
 struct ppp_mppe_state *state = (struct ppp_mppe_state *) arg;

 state->bits |= MPPE_BIT_FLUSHED;
}
