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
struct pp_cam_entry {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IEEE1284_MODE_ECP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pp_cam_entry *cam)
{
	int retry;

	/* The CPiA uses ECP protocol for Downloads from the Host to the camera.
	 * This will be software-emulated if ECP hardware is not present
	 */

	/* the usual camera maximum response time is 10ms, but after receiving
	 * some commands, it needs up to 40ms. (Data Sheet p. 32)*/

	for(retry = 0; retry < 4; ++retry) {
		if(!FUNC2(cam->port, IEEE1284_MODE_ECP)) {
			break;
		}
		FUNC1(10);
	}
	if(retry == 4) {
		FUNC0("Unable to negotiate IEEE1284 ECP Download mode\n");
		return -1;
	}
	return 0;
}