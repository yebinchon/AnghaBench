#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct bttv_fh {int /*<<< orphan*/  prio; struct bttv* btv; } ;
struct bttv {int opt_chroma_agc; int opt_combfilter; int opt_lumafilter; int opt_automute; int opt_adc_crush; int opt_vcr_hack; int opt_whitecrush_upper; int opt_whitecrush_lower; int opt_uv_ratio; int saturation; int opt_full_luma_range; int opt_coring; int /*<<< orphan*/  (* volume_gpio ) (struct bttv*,int) ;int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_ADC ; 
 int BT848_ADC_CRUSH ; 
 int BT848_ADC_RESERVED ; 
 int /*<<< orphan*/  BT848_CONTROL_LDEC ; 
 int /*<<< orphan*/  BT848_E_CONTROL ; 
 int /*<<< orphan*/  BT848_E_SCLOOP ; 
 int /*<<< orphan*/  BT848_OFORM ; 
 int /*<<< orphan*/  BT848_OFORM_CORE32 ; 
 int /*<<< orphan*/  BT848_OFORM_RANGE ; 
 int /*<<< orphan*/  BT848_O_CONTROL ; 
 int /*<<< orphan*/  BT848_O_SCLOOP ; 
 int BT848_SCLOOP_CAGC ; 
 int /*<<< orphan*/  BT848_WC_DOWN ; 
 int /*<<< orphan*/  BT848_WC_UP ; 
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 147 
#define  V4L2_CID_AUDIO_BASS 146 
#define  V4L2_CID_AUDIO_MUTE 145 
#define  V4L2_CID_AUDIO_TREBLE 144 
#define  V4L2_CID_AUDIO_VOLUME 143 
#define  V4L2_CID_BRIGHTNESS 142 
#define  V4L2_CID_CONTRAST 141 
#define  V4L2_CID_HUE 140 
#define  V4L2_CID_PRIVATE_AGC_CRUSH 139 
#define  V4L2_CID_PRIVATE_AUTOMUTE 138 
#define  V4L2_CID_PRIVATE_CHROMA_AGC 137 
#define  V4L2_CID_PRIVATE_COMBFILTER 136 
#define  V4L2_CID_PRIVATE_CORING 135 
#define  V4L2_CID_PRIVATE_FULL_LUMA_RANGE 134 
#define  V4L2_CID_PRIVATE_LUMAFILTER 133 
#define  V4L2_CID_PRIVATE_UV_RATIO 132 
#define  V4L2_CID_PRIVATE_VCR_HACK 131 
#define  V4L2_CID_PRIVATE_WHITECRUSH_LOWER 130 
#define  V4L2_CID_PRIVATE_WHITECRUSH_UPPER 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  s_ctrl ; 
 int /*<<< orphan*/  FUNC10 (struct bttv*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct file *file, void *f,
					struct v4l2_control *c)
{
	int err;
	int val;
	struct bttv_fh *fh = f;
	struct bttv *btv = fh->btv;

	err = FUNC11(&btv->prio, fh->prio);
	if (0 != err)
		return err;

	switch (c->id) {
	case V4L2_CID_BRIGHTNESS:
		FUNC1(btv, c->value);
		break;
	case V4L2_CID_HUE:
		FUNC3(btv, c->value);
		break;
	case V4L2_CID_CONTRAST:
		FUNC2(btv, c->value);
		break;
	case V4L2_CID_SATURATION:
		FUNC4(btv, c->value);
		break;
	case V4L2_CID_AUDIO_MUTE:
		FUNC0(btv, c->value);
		/* fall through */
	case V4L2_CID_AUDIO_VOLUME:
		if (btv->volume_gpio)
			btv->volume_gpio(btv, c->value);

		FUNC8(btv, core, s_ctrl, c);
		break;
	case V4L2_CID_AUDIO_BALANCE:
	case V4L2_CID_AUDIO_BASS:
	case V4L2_CID_AUDIO_TREBLE:
		FUNC8(btv, core, s_ctrl, c);
		break;

	case V4L2_CID_PRIVATE_CHROMA_AGC:
		btv->opt_chroma_agc = c->value;
		val = btv->opt_chroma_agc ? BT848_SCLOOP_CAGC : 0;
		FUNC9(val, BT848_E_SCLOOP);
		FUNC9(val, BT848_O_SCLOOP);
		break;
	case V4L2_CID_PRIVATE_COMBFILTER:
		btv->opt_combfilter = c->value;
		break;
	case V4L2_CID_PRIVATE_LUMAFILTER:
		btv->opt_lumafilter = c->value;
		if (btv->opt_lumafilter) {
			FUNC5(~BT848_CONTROL_LDEC, BT848_E_CONTROL);
			FUNC5(~BT848_CONTROL_LDEC, BT848_O_CONTROL);
		} else {
			FUNC7(BT848_CONTROL_LDEC, BT848_E_CONTROL);
			FUNC7(BT848_CONTROL_LDEC, BT848_O_CONTROL);
		}
		break;
	case V4L2_CID_PRIVATE_AUTOMUTE:
		btv->opt_automute = c->value;
		break;
	case V4L2_CID_PRIVATE_AGC_CRUSH:
		btv->opt_adc_crush = c->value;
		FUNC9(BT848_ADC_RESERVED |
				(btv->opt_adc_crush ? BT848_ADC_CRUSH : 0),
				BT848_ADC);
		break;
	case V4L2_CID_PRIVATE_VCR_HACK:
		btv->opt_vcr_hack = c->value;
		break;
	case V4L2_CID_PRIVATE_WHITECRUSH_UPPER:
		btv->opt_whitecrush_upper = c->value;
		FUNC9(c->value, BT848_WC_UP);
		break;
	case V4L2_CID_PRIVATE_WHITECRUSH_LOWER:
		btv->opt_whitecrush_lower = c->value;
		FUNC9(c->value, BT848_WC_DOWN);
		break;
	case V4L2_CID_PRIVATE_UV_RATIO:
		btv->opt_uv_ratio = c->value;
		FUNC4(btv, btv->saturation);
		break;
	case V4L2_CID_PRIVATE_FULL_LUMA_RANGE:
		btv->opt_full_luma_range = c->value;
		FUNC6((c->value<<7), ~BT848_OFORM_RANGE, BT848_OFORM);
		break;
	case V4L2_CID_PRIVATE_CORING:
		btv->opt_coring = c->value;
		FUNC6((c->value<<5), ~BT848_OFORM_CORE32, BT848_OFORM);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}