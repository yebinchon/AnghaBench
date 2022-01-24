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
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, unsigned char *dest,
			       u16 src, u16 len)
{
	int i;
	FUNC2(dev, src);
	if (src % 2) {
		*dest = FUNC1(dev, DR);
		dest++; len--;
	}
	for (i = len; i > 1 ; i -= 2) {
		u16 hw = FUNC0(dev, DR);
		*dest++ = hw;
		*dest++ = hw >> 8;
	}
	if (i)
		*dest = FUNC1(dev, DR);
}