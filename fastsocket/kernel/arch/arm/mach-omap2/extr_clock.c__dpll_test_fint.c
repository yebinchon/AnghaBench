
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dpll_data {int max_divider; int min_divider; } ;
struct clk {TYPE_1__* parent; struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int rate; } ;


 long DPLL_FINT_BAND1_MAX ;
 long DPLL_FINT_BAND1_MIN ;
 long DPLL_FINT_BAND2_MAX ;
 long DPLL_FINT_BAND2_MIN ;
 int DPLL_FINT_INVALID ;
 int DPLL_FINT_UNDERFLOW ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int _dpll_test_fint(struct clk *clk, u8 n)
{
 struct dpll_data *dd;
 long fint;
 int ret = 0;

 dd = clk->dpll_data;


 fint = clk->parent->rate / (n + 1);
 if (fint < DPLL_FINT_BAND1_MIN) {

  pr_debug("rejecting n=%d due to Fint failure, "
    "lowering max_divider\n", n);
  dd->max_divider = n;
  ret = DPLL_FINT_UNDERFLOW;

 } else if (fint > DPLL_FINT_BAND1_MAX &&
     fint < DPLL_FINT_BAND2_MIN) {

  pr_debug("rejecting n=%d due to Fint failure\n", n);
  ret = DPLL_FINT_INVALID;

 } else if (fint > DPLL_FINT_BAND2_MAX) {

  pr_debug("rejecting n=%d due to Fint failure, "
    "boosting min_divider\n", n);
  dd->min_divider = n;
  ret = DPLL_FINT_INVALID;

 }

 return ret;
}
