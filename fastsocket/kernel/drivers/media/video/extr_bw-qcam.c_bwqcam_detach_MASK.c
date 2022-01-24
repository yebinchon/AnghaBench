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
struct qcam_device {TYPE_1__* pdev; } ;
struct parport {int dummy; } ;
struct TYPE_2__ {struct parport* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcam_device*) ; 
 int num_cams ; 
 struct qcam_device** qcams ; 

__attribute__((used)) static void FUNC1(struct parport *port)
{
	int i;
	for (i = 0; i < num_cams; i++) {
		struct qcam_device *qcam = qcams[i];
		if (qcam && qcam->pdev->port == port) {
			qcams[i] = NULL;
			FUNC0(qcam);
		}
	}
}