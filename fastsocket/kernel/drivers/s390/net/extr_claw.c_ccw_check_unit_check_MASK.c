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
struct net_device {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct chbk {TYPE_1__* cdev; struct net_device* ndev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC2(struct chbk * p_ch, unsigned char sense )
{
	struct net_device *ndev = p_ch->ndev;
	struct device *dev = &p_ch->cdev->dev;

	FUNC0(4, trace, "unitchek");
	FUNC1(dev, "The communication peer of %s disconnected\n",
		ndev->name);

	if (sense & 0x40) {
		if (sense & 0x01) {
			FUNC1(dev, "The remote channel adapter for"
				" %s has been reset\n",
				ndev->name);
		}
	} else if (sense & 0x20) {
		if (sense & 0x04) {
			FUNC1(dev, "A data streaming timeout occurred"
				" for %s\n",
				ndev->name);
		} else if (sense & 0x10) {
			FUNC1(dev, "The remote channel adapter for %s"
				" is faulty\n",
				ndev->name);
		} else {
			FUNC1(dev, "A data transfer parity error occurred"
				" for %s\n",
				ndev->name);
		}
	} else if (sense & 0x10) {
		FUNC1(dev, "A read data parity error occurred"
			" for %s\n",
			ndev->name);
	}

}