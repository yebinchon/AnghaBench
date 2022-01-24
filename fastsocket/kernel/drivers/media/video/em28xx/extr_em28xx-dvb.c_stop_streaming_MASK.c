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
struct TYPE_2__ {struct em28xx* priv; } ;
struct em28xx_dvb {TYPE_1__ adapter; } ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 

__attribute__((used)) static int FUNC2(struct em28xx_dvb *dvb)
{
	struct em28xx *dev = dvb->adapter.priv;

	FUNC1(dev);

	FUNC0(dev, EM28XX_SUSPEND);

	return 0;
}