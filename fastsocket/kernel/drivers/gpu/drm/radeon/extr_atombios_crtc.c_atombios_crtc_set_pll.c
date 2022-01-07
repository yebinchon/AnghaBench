
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct radeon_pll {int reference_freq; int post_div; int reference_div; int flags; } ;
struct radeon_encoder {int active_device; int encoder_id; } ;
struct TYPE_4__ {struct radeon_pll dcpll; struct radeon_pll p2pll; struct radeon_pll p1pll; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct TYPE_5__ {int percentage; int amount; int type; int rate; int step; } ;
struct radeon_crtc {int pll_id; TYPE_2__ ss; int crtc_id; scalar_t__ ss_enabled; int bpc; int adjusted_clock; int pll_post_div; int pll_reference_div; int pll_flags; int encoder; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;

 int ATOM_DEVICE_TV_SUPPORT ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;



 int ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK ;
 int ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK ;
 int ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT ;
 int ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD ;
 int atombios_crtc_program_pll (struct drm_crtc*,int ,int,int,int ,int,int,int,int,int,int ,scalar_t__,TYPE_2__*) ;
 int atombios_crtc_program_ss (struct radeon_device*,int ,int,int ,TYPE_2__*) ;
 int atombios_get_encoder_mode (int ) ;
 int radeon_compute_pll_avivo (struct radeon_pll*,int ,int*,int*,int*,int*,int*) ;
 int radeon_compute_pll_legacy (struct radeon_pll*,int ,int*,int*,int*,int*,int*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

__attribute__((used)) static void atombios_crtc_set_pll(struct drm_crtc *crtc, struct drm_display_mode *mode)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder =
  to_radeon_encoder(radeon_crtc->encoder);
 u32 pll_clock = mode->clock;
 u32 ref_div = 0, fb_div = 0, frac_fb_div = 0, post_div = 0;
 struct radeon_pll *pll;
 int encoder_mode = atombios_get_encoder_mode(radeon_crtc->encoder);

 switch (radeon_crtc->pll_id) {
 case 130:
  pll = &rdev->clock.p1pll;
  break;
 case 129:
  pll = &rdev->clock.p2pll;
  break;
 case 131:
 case 128:
 default:
  pll = &rdev->clock.dcpll;
  break;
 }


 pll->flags = radeon_crtc->pll_flags;
 pll->reference_div = radeon_crtc->pll_reference_div;
 pll->post_div = radeon_crtc->pll_post_div;

 if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))

  radeon_compute_pll_legacy(pll, radeon_crtc->adjusted_clock, &pll_clock,
       &fb_div, &frac_fb_div, &ref_div, &post_div);
 else if (ASIC_IS_AVIVO(rdev))
  radeon_compute_pll_avivo(pll, radeon_crtc->adjusted_clock, &pll_clock,
      &fb_div, &frac_fb_div, &ref_div, &post_div);
 else
  radeon_compute_pll_legacy(pll, radeon_crtc->adjusted_clock, &pll_clock,
       &fb_div, &frac_fb_div, &ref_div, &post_div);

 atombios_crtc_program_ss(rdev, ATOM_DISABLE, radeon_crtc->pll_id,
     radeon_crtc->crtc_id, &radeon_crtc->ss);

 atombios_crtc_program_pll(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
      encoder_mode, radeon_encoder->encoder_id, mode->clock,
      ref_div, fb_div, frac_fb_div, post_div,
      radeon_crtc->bpc, radeon_crtc->ss_enabled, &radeon_crtc->ss);

 if (radeon_crtc->ss_enabled) {

  if (ASIC_IS_DCE4(rdev)) {
   u32 step_size;
   u32 amount = (((fb_div * 10) + frac_fb_div) * radeon_crtc->ss.percentage) / 10000;
   radeon_crtc->ss.amount = (amount / 10) & ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK;
   radeon_crtc->ss.amount |= ((amount - (amount / 10)) << ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT) &
    ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK;
   if (radeon_crtc->ss.type & ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD)
    step_size = (4 * amount * ref_div * (radeon_crtc->ss.rate * 2048)) /
     (125 * 25 * pll->reference_freq / 100);
   else
    step_size = (2 * amount * ref_div * (radeon_crtc->ss.rate * 2048)) /
     (125 * 25 * pll->reference_freq / 100);
   radeon_crtc->ss.step = step_size;
  }

  atombios_crtc_program_ss(rdev, ATOM_ENABLE, radeon_crtc->pll_id,
      radeon_crtc->crtc_id, &radeon_crtc->ss);
 }
}
