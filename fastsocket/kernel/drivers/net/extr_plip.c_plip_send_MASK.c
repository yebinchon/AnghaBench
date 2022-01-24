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
struct net_device {int dummy; } ;
typedef  enum plip_nibble_state { ____Placeholder_plip_nibble_state } plip_nibble_state ;

/* Variables and functions */
 int OK ; 
 int /*<<< orphan*/  PLIP_DELAY_UNIT ; 
#define  PLIP_NB_1 130 
#define  PLIP_NB_2 129 
#define  PLIP_NB_BEGIN 128 
 int TIMEOUT ; 
 unsigned char FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned char) ; 

__attribute__((used)) static inline int
FUNC3(unsigned short nibble_timeout, struct net_device *dev,
	  enum plip_nibble_state *ns_p, unsigned char data)
{
	unsigned char c0;
	unsigned int cx;

	switch (*ns_p) {
	case PLIP_NB_BEGIN:
		FUNC2 (dev, data & 0x0f);
		*ns_p = PLIP_NB_1;

	case PLIP_NB_1:
		FUNC2 (dev, 0x10 | (data & 0x0f));
		cx = nibble_timeout;
		while (1) {
			c0 = FUNC0(dev);
			if ((c0 & 0x80) == 0)
				break;
			if (--cx == 0)
				return TIMEOUT;
			FUNC1(PLIP_DELAY_UNIT);
		}
		FUNC2 (dev, 0x10 | (data >> 4));
		*ns_p = PLIP_NB_2;

	case PLIP_NB_2:
		FUNC2 (dev, (data >> 4));
		cx = nibble_timeout;
		while (1) {
			c0 = FUNC0(dev);
			if (c0 & 0x80)
				break;
			if (--cx == 0)
				return TIMEOUT;
			FUNC1(PLIP_DELAY_UNIT);
		}
		*ns_p = PLIP_NB_BEGIN;
		return OK;
	}
	return OK;
}