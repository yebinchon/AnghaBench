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
struct v4l2_dbg_chip_ident {int /*<<< orphan*/  ident; int /*<<< orphan*/  match; scalar_t__ revision; } ;
struct file {int dummy; } ;
struct cafe_camera {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_IDENT_CAFE ; 
 int /*<<< orphan*/  V4L2_IDENT_NONE ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  g_chip_ident ; 
 int FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dbg_chip_ident*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		struct v4l2_dbg_chip_ident *chip)
{
	struct cafe_camera *cam = priv;

	chip->ident = V4L2_IDENT_NONE;
	chip->revision = 0;
	if (FUNC1(&chip->match)) {
		chip->ident = V4L2_IDENT_CAFE;
		return 0;
	}
	return FUNC0(cam, core, g_chip_ident, chip);
}