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
struct usbnet {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,int,int) ; 
 scalar_t__ FUNC2 (struct usbnet*) ; 

__attribute__((used)) static void FUNC3(struct usbnet *dev, __le32 *speeds)
{
	if (FUNC2(dev))
		FUNC1(dev, "link speeds: %u kbps up, %u kbps down",
			FUNC0(speeds[0]) / 1000,
		FUNC0(speeds[1]) / 1000);
}