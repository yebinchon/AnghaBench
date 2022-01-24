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
struct hpsb_iso {int dummy; } ;
struct firedtv {struct hpsb_iso* backend_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpsb_iso*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_iso*) ; 

__attribute__((used)) static void FUNC2(struct firedtv *fdtv)
{
	struct hpsb_iso *iso_handle = fdtv->backend_data;

	if (iso_handle != NULL) {
		FUNC1(iso_handle);
		FUNC0(iso_handle);
	}
	fdtv->backend_data = NULL;
}