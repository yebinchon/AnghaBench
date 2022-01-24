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
struct asd_ms_conn_map {scalar_t__ maj; } ;
struct asd_manuf_sec {int dummy; } ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOENT ; 
 struct asd_ms_conn_map* FUNC1 (struct asd_manuf_sec*,char,char) ; 

__attribute__((used)) static int FUNC2(struct asd_ha_struct *asd_ha,
				    struct asd_manuf_sec *manuf_sec)
{
	struct asd_ms_conn_map *cm;

	cm = FUNC1(manuf_sec, 'M', 'C');
	if (!cm) {
		FUNC0("ms: no connector map found\n");
		return 0;
	}

	if (cm->maj != 0) {
		FUNC0("ms: unsupported: connector map major version 0x%x"
			    "\n", cm->maj);
		return -ENOENT;
	}

	/* XXX */

	return 0;
}