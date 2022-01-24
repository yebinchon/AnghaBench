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
struct cdrom_device_info {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
#define  CDROMPLAYTRKIND 130 
#define  CDROMREADTOCENTRY 129 
#define  CDROMREADTOCHDR 128 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 

int FUNC3(struct cdrom_device_info *cdi,
			  unsigned int cmd, void *arg)
{
	ide_drive_t *drive = cdi->handle;

	switch (cmd) {
	/*
	 * emulate PLAY_AUDIO_TI command with PLAY_AUDIO_10, since
	 * atapi doesn't support it
	 */
	case CDROMPLAYTRKIND:
		return FUNC0(drive, arg);
	case CDROMREADTOCHDR:
		return FUNC2(drive, arg);
	case CDROMREADTOCENTRY:
		return FUNC1(drive, arg);
	default:
		return -EINVAL;
	}
}