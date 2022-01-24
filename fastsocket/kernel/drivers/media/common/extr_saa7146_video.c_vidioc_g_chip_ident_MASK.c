#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct v4l2_dbg_chip_ident {int /*<<< orphan*/  ident; TYPE_1__ match; scalar_t__ revision; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_CHIP_MATCH_HOST ; 
 int /*<<< orphan*/  V4L2_IDENT_NONE ; 
 int /*<<< orphan*/  V4L2_IDENT_SAA7146 ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  g_chip_ident ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dbg_chip_ident*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *__fh,
		struct v4l2_dbg_chip_ident *chip)
{
	struct saa7146_fh *fh = __fh;
	struct saa7146_dev *dev = fh->dev;

	chip->ident = V4L2_IDENT_NONE;
	chip->revision = 0;
	if (chip->match.type == V4L2_CHIP_MATCH_HOST && !chip->match.addr) {
		chip->ident = V4L2_IDENT_SAA7146;
		return 0;
	}
	return FUNC0(&dev->v4l2_dev, 0,
			core, g_chip_ident, chip);
}