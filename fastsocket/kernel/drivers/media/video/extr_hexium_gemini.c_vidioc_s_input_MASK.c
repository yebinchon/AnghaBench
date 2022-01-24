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
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {unsigned int cur_input; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned int HEXIUM_INPUTS ; 
 int /*<<< orphan*/  FUNC1 (struct hexium*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, unsigned int input)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct hexium *hexium = (struct hexium *) dev->ext_priv;

	FUNC0(("VIDIOC_S_INPUT %d.\n", input));

	if (input < 0 || input >= HEXIUM_INPUTS)
		return -EINVAL;

	hexium->cur_input = input;
	FUNC1(hexium, input);
	return 0;
}