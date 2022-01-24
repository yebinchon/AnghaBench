#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ata_device {TYPE_3__* link; } ;
struct at91_ide_info {int /*<<< orphan*/  cs; } ;
struct TYPE_6__ {TYPE_2__* ap; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {struct at91_ide_info* private_data; } ;

/* Variables and functions */
 unsigned int AT91_SMC_DBW ; 
 unsigned int AT91_SMC_DBW_16 ; 
 unsigned int AT91_SMC_DBW_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (struct ata_device*,unsigned char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static unsigned int FUNC6(struct ata_device *dev,
		unsigned char *buf, unsigned int buflen, int rw)
{
	struct at91_ide_info *info = dev->link->ap->host->private_data;
	unsigned int consumed;
	unsigned long flags;
	unsigned int mode;

	FUNC5(flags);
	mode = FUNC1(FUNC0(info->cs));

	/* set 16bit mode before writing data */
	FUNC2(FUNC0(info->cs),
			(mode & ~AT91_SMC_DBW) | AT91_SMC_DBW_16);

	consumed = FUNC3(dev, buf, buflen, rw);

	/* restore 8bit mode after data is written */
	FUNC2(FUNC0(info->cs),
			(mode & ~AT91_SMC_DBW) | AT91_SMC_DBW_8);

	FUNC4(flags);
	return consumed;
}