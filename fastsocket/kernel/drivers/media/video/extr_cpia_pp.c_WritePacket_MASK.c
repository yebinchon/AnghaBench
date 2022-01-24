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
typedef  int /*<<< orphan*/  u8 ;
struct pp_cam_entry {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct pp_cam_entry*) ; 
 scalar_t__ FUNC2 (struct pp_cam_entry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC4(struct pp_cam_entry *cam, const u8 *packet, size_t size)
{
	int retval=0;
	int size_written;

	if (packet == NULL) {
		return -EINVAL;
	}
	if (FUNC2(cam)) {
		FUNC0("Write failed in setup\n");
		return -EIO;
	}
	size_written = FUNC3(cam->port, packet, size);
	if(size_written != size) {
		FUNC0("Write failed, wrote %d/%d\n", size_written, size);
		retval = -EIO;
	}
	FUNC1(cam);
	return retval;
}