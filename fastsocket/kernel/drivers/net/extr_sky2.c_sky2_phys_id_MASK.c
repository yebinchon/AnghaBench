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
typedef  unsigned int u32 ;
struct sky2_port {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_LED_NORM ; 
 int /*<<< orphan*/  MO_LED_OFF ; 
 int /*<<< orphan*/  MO_LED_ON ; 
 unsigned int UINT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 data)
{
	struct sky2_port *sky2 = FUNC1(dev);
	unsigned int i;

	if (data == 0)
		data = UINT_MAX;

	for (i = 0; i < data; i++) {
		FUNC2(sky2, MO_LED_ON);
		if (FUNC0(500))
			break;
		FUNC2(sky2, MO_LED_OFF);
		if (FUNC0(500))
			break;
	}
	FUNC2(sky2, MO_LED_NORM);

	return 0;
}