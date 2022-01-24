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
typedef  int u8 ;
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7191 {int input; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  SAA7191_INPUT_COMPOSITE 129 
#define  SAA7191_INPUT_SVIDEO 128 
 int SAA7191_IOCK_CHRS ; 
 int SAA7191_IOCK_GPSW1 ; 
 int SAA7191_IOCK_GPSW2 ; 
 int SAA7191_LUMA_BYPS ; 
 int /*<<< orphan*/  SAA7191_REG_IOCK ; 
 int /*<<< orphan*/  SAA7191_REG_LUMA ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct saa7191* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			     u32 input, u32 output, u32 config)
{
	struct saa7191 *decoder = FUNC2(sd);
	u8 luma = FUNC0(sd, SAA7191_REG_LUMA);
	u8 iock = FUNC0(sd, SAA7191_REG_IOCK);
	int err;

	switch (input) {
	case SAA7191_INPUT_COMPOSITE: /* Set Composite input */
		iock &= ~(SAA7191_IOCK_CHRS | SAA7191_IOCK_GPSW1
			  | SAA7191_IOCK_GPSW2);
		/* Chrominance trap active */
		luma &= ~SAA7191_LUMA_BYPS;
		break;
	case SAA7191_INPUT_SVIDEO: /* Set S-Video input */
		iock |= SAA7191_IOCK_CHRS | SAA7191_IOCK_GPSW2;
		/* Chrominance trap bypassed */
		luma |= SAA7191_LUMA_BYPS;
		break;
	default:
		return -EINVAL;
	}

	err = FUNC1(sd, SAA7191_REG_LUMA, luma);
	if (err)
		return -EIO;
	err = FUNC1(sd, SAA7191_REG_IOCK, iock);
	if (err)
		return -EIO;

	decoder->input = input;

	return 0;
}