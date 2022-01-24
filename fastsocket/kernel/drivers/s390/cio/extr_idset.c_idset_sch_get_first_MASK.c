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
struct subchannel_id {int ssid; int sch_no; } ;
struct idset {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct idset*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel_id*) ; 

int FUNC2(struct idset *set, struct subchannel_id *schid)
{
	int ssid = 0;
	int id = 0;
	int rc;

	rc = FUNC0(set, &ssid, &id);
	if (rc) {
		FUNC1(schid);
		schid->ssid = ssid;
		schid->sch_no = id;
	}
	return rc;
}