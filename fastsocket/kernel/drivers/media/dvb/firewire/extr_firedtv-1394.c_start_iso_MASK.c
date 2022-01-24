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
struct hpsb_iso {int dummy; } ;
struct firedtv {struct hpsb_iso* backend_data; int /*<<< orphan*/  device; int /*<<< orphan*/  isochannel; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FDTV_ISO_BUFFER_PACKETS ; 
 int /*<<< orphan*/  FDTV_ISO_BUFFER_SIZE ; 
 int /*<<< orphan*/  HPSB_ISO_DMA_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct hpsb_iso* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hpsb_iso*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_iso*) ; 
 TYPE_1__* FUNC4 (struct firedtv*) ; 
 int /*<<< orphan*/  rawiso_activity_cb ; 

__attribute__((used)) static int FUNC5(struct firedtv *fdtv)
{
	struct hpsb_iso *iso_handle;
	int ret;

	iso_handle = FUNC1(FUNC4(fdtv)->host,
				FDTV_ISO_BUFFER_SIZE, FDTV_ISO_BUFFER_PACKETS,
				fdtv->isochannel, HPSB_ISO_DMA_DEFAULT,
				-1, /* stat.config.irq_interval */
				rawiso_activity_cb);
	if (iso_handle == NULL) {
		FUNC0(fdtv->device, "cannot initialize iso receive\n");
		return -ENOMEM;
	}
	fdtv->backend_data = iso_handle;

	ret = FUNC2(iso_handle, -1, -1, 0);
	if (ret != 0) {
		FUNC0(fdtv->device, "cannot start iso receive\n");
		FUNC3(iso_handle);
		fdtv->backend_data = NULL;
	}
	return ret;
}