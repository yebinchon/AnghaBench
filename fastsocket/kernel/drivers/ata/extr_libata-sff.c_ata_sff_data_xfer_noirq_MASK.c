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
struct ata_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ata_device*,unsigned char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

unsigned int FUNC3(struct ata_device *dev, unsigned char *buf,
				     unsigned int buflen, int rw)
{
	unsigned long flags;
	unsigned int consumed;

	FUNC2(flags);
	consumed = FUNC0(dev, buf, buflen, rw);
	FUNC1(flags);

	return consumed;
}