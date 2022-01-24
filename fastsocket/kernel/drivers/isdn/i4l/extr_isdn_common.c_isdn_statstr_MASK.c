#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t* drvmap; char** drvid; int* chanmap; int* usage; char** num; TYPE_1__** drv; } ;
struct TYPE_3__ {int /*<<< orphan*/  online; } ;

/* Variables and functions */
 int ISDN_MAX_CHANNELS ; 
 int ISDN_MAX_DRIVERS ; 
 TYPE_2__* dev ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(void)
{
	static char istatbuf[2048];
	char *p;
	int i;

	FUNC0(istatbuf, "idmap:\t");
	p = istatbuf + FUNC1(istatbuf);
	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		FUNC0(p, "%s ", (dev->drvmap[i] < 0) ? "-" : dev->drvid[dev->drvmap[i]]);
		p = istatbuf + FUNC1(istatbuf);
	}
	FUNC0(p, "\nchmap:\t");
	p = istatbuf + FUNC1(istatbuf);
	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		FUNC0(p, "%d ", dev->chanmap[i]);
		p = istatbuf + FUNC1(istatbuf);
	}
	FUNC0(p, "\ndrmap:\t");
	p = istatbuf + FUNC1(istatbuf);
	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		FUNC0(p, "%d ", dev->drvmap[i]);
		p = istatbuf + FUNC1(istatbuf);
	}
	FUNC0(p, "\nusage:\t");
	p = istatbuf + FUNC1(istatbuf);
	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		FUNC0(p, "%d ", dev->usage[i]);
		p = istatbuf + FUNC1(istatbuf);
	}
	FUNC0(p, "\nflags:\t");
	p = istatbuf + FUNC1(istatbuf);
	for (i = 0; i < ISDN_MAX_DRIVERS; i++) {
		if (dev->drv[i]) {
			FUNC0(p, "%ld ", dev->drv[i]->online);
			p = istatbuf + FUNC1(istatbuf);
		} else {
			FUNC0(p, "? ");
			p = istatbuf + FUNC1(istatbuf);
		}
	}
	FUNC0(p, "\nphone:\t");
	p = istatbuf + FUNC1(istatbuf);
	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		FUNC0(p, "%s ", dev->num[i]);
		p = istatbuf + FUNC1(istatbuf);
	}
	FUNC0(p, "\n");
	return istatbuf;
}