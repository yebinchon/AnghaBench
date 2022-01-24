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
struct tle62x0_state {unsigned char* tx_buff; unsigned int gpio_state; int nr_gpio; TYPE_1__* us; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char CMD_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,unsigned char,unsigned char) ; 
 int FUNC1 (TYPE_1__*,unsigned char*,int) ; 

__attribute__((used)) static inline int FUNC2(struct tle62x0_state *st)
{
	unsigned char *buff = st->tx_buff;
	unsigned int gpio_state = st->gpio_state;

	buff[0] = CMD_SET;

	if (st->nr_gpio == 16) {
		buff[1] = gpio_state >> 8;
		buff[2] = gpio_state;
	} else {
		buff[1] = gpio_state;
	}

	FUNC0(&st->us->dev, "buff %02x,%02x,%02x\n",
		buff[0], buff[1], buff[2]);

	return FUNC1(st->us, buff, (st->nr_gpio == 16) ? 3 : 2);
}