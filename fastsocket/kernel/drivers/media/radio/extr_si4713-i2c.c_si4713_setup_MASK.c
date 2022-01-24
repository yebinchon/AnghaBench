#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_modulator {int /*<<< orphan*/  txsubchans; scalar_t__ index; } ;
struct v4l2_frequency {scalar_t__ frequency; } ;
struct v4l2_ext_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {scalar_t__ enabled; int /*<<< orphan*/  radio_text; int /*<<< orphan*/  ps_name; int /*<<< orphan*/  pty; int /*<<< orphan*/  deviation; int /*<<< orphan*/  pi; } ;
struct TYPE_7__ {int /*<<< orphan*/  release_time; int /*<<< orphan*/  enabled; int /*<<< orphan*/  attack_time; int /*<<< orphan*/  gain; int /*<<< orphan*/  threshold; } ;
struct TYPE_6__ {int /*<<< orphan*/  release_time; int /*<<< orphan*/  enabled; int /*<<< orphan*/  deviation; } ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; int /*<<< orphan*/  deviation; int /*<<< orphan*/  frequency; } ;
struct si4713_device {int /*<<< orphan*/  sd; TYPE_4__ rds_info; scalar_t__ stereo; int /*<<< orphan*/  antenna_capacitor; int /*<<< orphan*/  power_level; scalar_t__ frequency; int /*<<< orphan*/  preemphasis; TYPE_3__ acomp_info; TYPE_2__ limiter_info; TYPE_1__ pilot_info; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_FREQUENCY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_ENABLED ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_COMPRESSION_THRESHOLD ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LIMITER_DEVIATION ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LIMITER_ENABLED ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LIMITER_RELEASE_TIME ; 
 int /*<<< orphan*/  V4L2_CID_PILOT_TONE_DEVIATION ; 
 int /*<<< orphan*/  V4L2_CID_PILOT_TONE_ENABLED ; 
 int /*<<< orphan*/  V4L2_CID_PILOT_TONE_FREQUENCY ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_DEVIATION ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_PI ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_PS_NAME ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_PTY ; 
 int /*<<< orphan*/  V4L2_CID_RDS_TX_RADIO_TEXT ; 
 int /*<<< orphan*/  V4L2_CID_TUNE_ANTENNA_CAPACITOR ; 
 int /*<<< orphan*/  V4L2_CID_TUNE_POWER_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_TUNE_PREEMPHASIS ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_RDS ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct si4713_device*) ; 
 struct si4713_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct si4713_device*,struct si4713_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct v4l2_modulator*) ; 
 int FUNC7 (struct si4713_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct si4713_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (struct si4713_device*,struct v4l2_ext_control*) ; 
 int FUNC11 (struct si4713_device*,struct v4l2_ext_control*) ; 

__attribute__((used)) static int FUNC12(struct si4713_device *sdev)
{
	struct v4l2_ext_control ctrl;
	struct v4l2_frequency f;
	struct v4l2_modulator vm;
	struct si4713_device *tmp;
	int rval = 0;

	tmp = FUNC1(sizeof(*tmp), GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	/* Get a local copy to avoid race */
	FUNC3(&sdev->mutex);
	FUNC2(tmp, sdev, sizeof(*sdev));
	FUNC4(&sdev->mutex);

	ctrl.id = V4L2_CID_RDS_TX_PI;
	ctrl.value = tmp->rds_info.pi;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_COMPRESSION_THRESHOLD;
	ctrl.value = tmp->acomp_info.threshold;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_COMPRESSION_GAIN;
	ctrl.value = tmp->acomp_info.gain;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_PILOT_TONE_FREQUENCY;
	ctrl.value = tmp->pilot_info.frequency;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME;
	ctrl.value = tmp->acomp_info.attack_time;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_PILOT_TONE_DEVIATION;
	ctrl.value = tmp->pilot_info.deviation;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_LIMITER_DEVIATION;
	ctrl.value = tmp->limiter_info.deviation;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_RDS_TX_DEVIATION;
	ctrl.value = tmp->rds_info.deviation;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_RDS_TX_PTY;
	ctrl.value = tmp->rds_info.pty;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_LIMITER_ENABLED;
	ctrl.value = tmp->limiter_info.enabled;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_COMPRESSION_ENABLED;
	ctrl.value = tmp->acomp_info.enabled;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_PILOT_TONE_ENABLED;
	ctrl.value = tmp->pilot_info.enabled;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_LIMITER_RELEASE_TIME;
	ctrl.value = tmp->limiter_info.release_time;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME;
	ctrl.value = tmp->acomp_info.release_time;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_TUNE_PREEMPHASIS;
	ctrl.value = tmp->preemphasis;
	rval |= FUNC10(sdev, &ctrl);

	ctrl.id = V4L2_CID_RDS_TX_PS_NAME;
	rval |= FUNC7(sdev, tmp->rds_info.ps_name);

	ctrl.id = V4L2_CID_RDS_TX_RADIO_TEXT;
	rval |= FUNC8(sdev, tmp->rds_info.radio_text);

	/* Device procedure needs to set frequency first */
	f.frequency = tmp->frequency ? tmp->frequency : DEFAULT_FREQUENCY;
	f.frequency = FUNC9(f.frequency);
	rval |= FUNC5(&sdev->sd, &f);

	ctrl.id = V4L2_CID_TUNE_POWER_LEVEL;
	ctrl.value = tmp->power_level;
	rval |= FUNC11(sdev, &ctrl);

	ctrl.id = V4L2_CID_TUNE_ANTENNA_CAPACITOR;
	ctrl.value = tmp->antenna_capacitor;
	rval |= FUNC11(sdev, &ctrl);

	vm.index = 0;
	if (tmp->stereo)
		vm.txsubchans = V4L2_TUNER_SUB_STEREO;
	else
		vm.txsubchans = V4L2_TUNER_SUB_MONO;
	if (tmp->rds_info.enabled)
		vm.txsubchans |= V4L2_TUNER_SUB_RDS;
	FUNC6(&sdev->sd, &vm);

	FUNC0(tmp);

	return rval;
}