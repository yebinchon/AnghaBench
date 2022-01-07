
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPLL_MIN_MULTIPLIER ;
 int DPLL_MULT_UNDERFLOW ;
 int DPLL_ROUNDING_VAL ;
 int DPLL_SCALE_FACTOR ;
 unsigned long _dpll_compute_new_rate (unsigned long,int,int) ;

__attribute__((used)) static int _dpll_test_mult(int *m, int n, unsigned long *new_rate,
      unsigned long target_rate,
      unsigned long parent_rate)
{
 int r = 0, carry = 0;


 if (*m % DPLL_SCALE_FACTOR >= DPLL_ROUNDING_VAL)
  carry = 1;
 *m = (*m / DPLL_SCALE_FACTOR) + carry;





 *new_rate = _dpll_compute_new_rate(parent_rate, *m, n);
 if (*new_rate > target_rate) {
  (*m)--;
  *new_rate = 0;
 }


 if (*m < DPLL_MIN_MULTIPLIER) {
  *m = DPLL_MIN_MULTIPLIER;
  *new_rate = 0;
  r = DPLL_MULT_UNDERFLOW;
 }

 if (*new_rate == 0)
  *new_rate = _dpll_compute_new_rate(parent_rate, *m, n);

 return r;
}
