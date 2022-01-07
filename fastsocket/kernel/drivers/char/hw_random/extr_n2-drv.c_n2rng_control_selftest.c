
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n2rng {int* test_control; int hv_state; TYPE_1__* units; int test_buffer; } ;
struct TYPE_2__ {int * control; } ;


 int HV_RNG_STATE_HEALTHCHECK ;
 int RNG_CTL_ASEL_SHIFT ;
 int RNG_CTL_LFSR ;
 int RNG_CTL_WAIT_SHIFT ;
 int SELFTEST_TICKS ;
 int n2rng_check_selftest_buffer (struct n2rng*,unsigned long) ;
 int n2rng_entropy_diag_read (struct n2rng*,unsigned long,int*,int ,int ,int,int *,int ) ;

__attribute__((used)) static int n2rng_control_selftest(struct n2rng *np, unsigned long unit)
{
 int err;

 np->test_control[0] = (0x2 << RNG_CTL_ASEL_SHIFT);
 np->test_control[1] = (0x2 << RNG_CTL_ASEL_SHIFT);
 np->test_control[2] = (0x2 << RNG_CTL_ASEL_SHIFT);
 np->test_control[3] = ((0x2 << RNG_CTL_ASEL_SHIFT) |
          RNG_CTL_LFSR |
          ((SELFTEST_TICKS - 2) << RNG_CTL_WAIT_SHIFT));


 err = n2rng_entropy_diag_read(np, unit, np->test_control,
          HV_RNG_STATE_HEALTHCHECK,
          np->test_buffer,
          sizeof(np->test_buffer),
          &np->units[unit].control[0],
          np->hv_state);
 if (err)
  return err;

 return n2rng_check_selftest_buffer(np, unit);
}
