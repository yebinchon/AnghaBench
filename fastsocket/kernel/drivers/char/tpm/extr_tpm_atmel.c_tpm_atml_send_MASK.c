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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  iobase; } ;
struct tpm_chip {TYPE_1__ vendor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tpm_chip *chip, u8 *buf, size_t count)
{
	int i;

	FUNC0(chip->dev, "tpm_atml_send:\n");
	for (i = 0; i < count; i++) {
		FUNC0(chip->dev, "%d 0x%x(%d)\n",  i, buf[i], buf[i]);
 		FUNC1(buf[i], chip->vendor.iobase);
	}

	return count;
}