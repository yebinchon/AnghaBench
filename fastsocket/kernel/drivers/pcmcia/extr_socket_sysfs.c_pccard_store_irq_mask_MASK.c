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
struct pcmcia_socket {int /*<<< orphan*/  irq_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,char*,int /*<<< orphan*/ *) ; 
 struct pcmcia_socket* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	ssize_t ret;
	struct pcmcia_socket *s = FUNC1(dev);
	u32 mask;

	if (!count)
		return -EINVAL;

	ret = FUNC0 (buf, "0x%x\n", &mask);

	if (ret == 1) {
		s->irq_mask &= mask;
		ret = 0;
	}

	return ret ? ret : count;
}