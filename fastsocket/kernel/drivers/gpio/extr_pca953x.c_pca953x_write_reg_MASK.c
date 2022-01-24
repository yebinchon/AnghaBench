#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int ngpio; } ;
struct pca953x_chip {TYPE_2__* client; TYPE_1__ gpio_chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pca953x_chip *chip, int reg, uint16_t val)
{
	int ret;

	if (chip->gpio_chip.ngpio <= 8)
		ret = FUNC1(chip->client, reg, val);
	else
		ret = FUNC2(chip->client, reg << 1, val);

	if (ret < 0) {
		FUNC0(&chip->client->dev, "failed writing register\n");
		return ret;
	}

	return 0;
}