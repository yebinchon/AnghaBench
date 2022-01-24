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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct maestro {int /*<<< orphan*/  pdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIO_VERSION ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_TUNER ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct maestro* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void  *priv,
					struct v4l2_capability *v)
{
	struct maestro *dev = FUNC3(file);

	FUNC2(v->driver, "radio-maestro", sizeof(v->driver));
	FUNC2(v->card, "Maestro Radio", sizeof(v->card));
	FUNC1(v->bus_info, sizeof(v->bus_info), "PCI:%s", FUNC0(dev->pdev));
	v->version = RADIO_VERSION;
	v->capabilities = V4L2_CAP_TUNER | V4L2_CAP_RADIO;
	return 0;
}