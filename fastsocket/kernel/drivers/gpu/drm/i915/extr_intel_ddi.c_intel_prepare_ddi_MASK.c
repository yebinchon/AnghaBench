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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int PORT_A ; 
 int PORT_E ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int) ; 

void FUNC2(struct drm_device *dev)
{
	int port;

	if (!FUNC0(dev))
		return;

	for (port = PORT_A; port < PORT_E; port++)
		FUNC1(dev, port, false);

	/* DDI E is the suggested one to work in FDI mode, so program is as such
	 * by default. It will have to be re-programmed in case a digital DP
	 * output will be detected on it
	 */
	FUNC1(dev, PORT_E, true);
}