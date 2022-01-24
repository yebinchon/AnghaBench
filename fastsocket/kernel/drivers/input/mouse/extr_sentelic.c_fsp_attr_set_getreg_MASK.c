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
struct psmouse {struct fsp_data* private; } ;
struct fsp_data {unsigned long last_reg; int last_val; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 scalar_t__ FUNC0 (struct psmouse*,unsigned long,int*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(struct psmouse *psmouse, void *data,
					const char *buf, size_t count)
{
	struct fsp_data *pad = psmouse->private;
	unsigned long reg;
	int val;

	if (FUNC1(buf, 16, &reg) || reg > 0xff)
		return -EINVAL;

	if (FUNC0(psmouse, reg, &val))
		return -EIO;

	pad->last_reg = reg;
	pad->last_val = val;

	return count;
}