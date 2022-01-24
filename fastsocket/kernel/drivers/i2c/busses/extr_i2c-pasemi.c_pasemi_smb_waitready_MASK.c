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
struct pasemi_smbus {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int ENXIO ; 
 unsigned int ETIME ; 
 int /*<<< orphan*/  REG_SMSTA ; 
 unsigned int SMSTA_MTN ; 
 unsigned int SMSTA_XEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct pasemi_smbus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pasemi_smbus*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC4(struct pasemi_smbus *smbus)
{
	int timeout = 10;
	unsigned int status;

	status = FUNC2(smbus, REG_SMSTA);

	while (!(status & SMSTA_XEN) && timeout--) {
		FUNC1(1);
		status = FUNC2(smbus, REG_SMSTA);
	}

	/* Got NACK? */
	if (status & SMSTA_MTN)
		return -ENXIO;

	if (timeout < 0) {
		FUNC0(&smbus->dev->dev, "Timeout, status 0x%08x\n", status);
		FUNC3(smbus, REG_SMSTA, status);
		return -ETIME;
	}

	/* Clear XEN */
	FUNC3(smbus, REG_SMSTA, SMSTA_XEN);

	return 0;
}