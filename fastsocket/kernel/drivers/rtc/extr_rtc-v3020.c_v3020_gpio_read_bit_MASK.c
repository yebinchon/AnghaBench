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
struct v3020 {TYPE_1__* gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 size_t V3020_CS ; 
 size_t V3020_IO ; 
 size_t V3020_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned char FUNC4(struct v3020 *chip)
{
	int bit;

	FUNC0(chip->gpio[V3020_IO].gpio);
	FUNC2(chip->gpio[V3020_CS].gpio, 0);
	FUNC2(chip->gpio[V3020_RD].gpio, 0);
	FUNC3(1);
	bit = !!FUNC1(chip->gpio[V3020_IO].gpio);
	FUNC3(1);
	FUNC2(chip->gpio[V3020_RD].gpio, 1);
	FUNC2(chip->gpio[V3020_CS].gpio, 1);

	return bit;
}