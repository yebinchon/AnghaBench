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
struct osdv2_cdb {int dummy; } ;
struct osdv1_cdb {int dummy; } ;
struct osd_capability {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OSD_CAP_LEN ; 
 int OSD_TOTAL_CDB_LEN ; 
 int OSDv1_TOTAL_CDB_LEN ; 

__attribute__((used)) static inline void FUNC1(void)
{
	/* structures were not packed */
	FUNC0(sizeof(struct osd_capability) != OSD_CAP_LEN);
	FUNC0(sizeof(struct osdv2_cdb) != OSD_TOTAL_CDB_LEN);
	FUNC0(sizeof(struct osdv1_cdb) != OSDv1_TOTAL_CDB_LEN);
}