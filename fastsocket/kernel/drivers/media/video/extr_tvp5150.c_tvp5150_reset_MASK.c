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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int /*<<< orphan*/  norm; int /*<<< orphan*/  hue; int /*<<< orphan*/  contrast; int /*<<< orphan*/  bright; } ;

/* Variables and functions */
 int /*<<< orphan*/  TVP5150_BRIGHT_CTL ; 
 int /*<<< orphan*/  TVP5150_CONTRAST_CTL ; 
 int /*<<< orphan*/  TVP5150_HUE_CTL ; 
 int /*<<< orphan*/  TVP5150_SATURATION_CTL ; 
 struct tvp5150* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  tvp5150_init_default ; 
 int /*<<< orphan*/  tvp5150_init_enable ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbi_ram_default ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, u32 val)
{
	struct tvp5150 *decoder = FUNC0(sd);

	/* Initializes TVP5150 to its default values */
	FUNC5(sd, tvp5150_init_default);

	/* Initializes VDP registers */
	FUNC3(sd, vbi_ram_default);

	/* Selects decoder input */
	FUNC1(sd);

	/* Initializes TVP5150 to stream enabled values */
	FUNC5(sd, tvp5150_init_enable);

	/* Initialize image preferences */
	FUNC4(sd, TVP5150_BRIGHT_CTL, decoder->bright);
	FUNC4(sd, TVP5150_CONTRAST_CTL, decoder->contrast);
	FUNC4(sd, TVP5150_SATURATION_CTL, decoder->contrast);
	FUNC4(sd, TVP5150_HUE_CTL, decoder->hue);

	FUNC2(sd, decoder->norm);
	return 0;
}