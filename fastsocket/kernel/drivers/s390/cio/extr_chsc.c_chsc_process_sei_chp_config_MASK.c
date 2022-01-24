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
struct chsc_sei_area {scalar_t__ rs; int /*<<< orphan*/  ccdf; } ;
struct chp_id {int id; int /*<<< orphan*/  cssid; } ;
struct chp_config_data {size_t op; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int __MAX_CHPID ; 
 int /*<<< orphan*/  FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC2 (struct chp_id,int) ; 
 int /*<<< orphan*/  FUNC3 (struct chp_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct chsc_sei_area *sei_area)
{
	struct chp_config_data *data;
	struct chp_id chpid;
	int num;
	char *events[3] = {"configure", "deconfigure", "cancel deconfigure"};

	FUNC0(4, "chsc: channel-path-configuration notification\n");
	if (sei_area->rs != 0)
		return;
	data = (struct chp_config_data *) &(sei_area->ccdf);
	FUNC3(&chpid);
	for (num = 0; num <= __MAX_CHPID; num++) {
		if (!FUNC4(data->map, num))
			continue;
		chpid.id = num;
		FUNC5("Processing %s for channel path %x.%02x\n",
			  events[data->op], chpid.cssid, chpid.id);
		switch (data->op) {
		case 0:
			FUNC2(chpid, 1);
			break;
		case 1:
			FUNC2(chpid, 0);
			break;
		case 2:
			FUNC1(chpid);
			break;
		}
	}
}