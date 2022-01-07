
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_pll {int reference_div; int reference_freq; } ;
struct TYPE_2__ {struct radeon_pll spll; } ;
struct radeon_device {TYPE_1__ clock; } ;


 int RADEON_M_SPLL_REF_DIV_MASK ;
 int RADEON_M_SPLL_REF_FB_DIV ;
 int RREG32_PLL (int ) ;

__attribute__((used)) static uint32_t calc_eng_mem_clock(struct radeon_device *rdev,
       uint32_t req_clock,
       int *fb_div, int *post_div)
{
 struct radeon_pll *spll = &rdev->clock.spll;
 int ref_div = spll->reference_div;

 if (!ref_div)
  ref_div =
      RREG32_PLL(RADEON_M_SPLL_REF_FB_DIV) &
      RADEON_M_SPLL_REF_DIV_MASK;

 if (req_clock < 15000) {
  *post_div = 8;
  req_clock *= 8;
 } else if (req_clock < 30000) {
  *post_div = 4;
  req_clock *= 4;
 } else if (req_clock < 60000) {
  *post_div = 2;
  req_clock *= 2;
 } else
  *post_div = 1;

 req_clock *= ref_div;
 req_clock += spll->reference_freq;
 req_clock /= (2 * spll->reference_freq);

 *fb_div = req_clock & 0xff;

 req_clock = (req_clock & 0xffff) << 1;
 req_clock *= spll->reference_freq;
 req_clock /= ref_div;
 req_clock /= *post_div;

 return req_clock;
}
