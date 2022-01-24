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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  ibmvstgt_driver ; 
 int /*<<< orphan*/  ibmvstgt_transport_functions ; 
 int /*<<< orphan*/  ibmvstgt_transport_template ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vtgtd ; 

__attribute__((used)) static int FUNC7(void)
{
	int err = -ENOMEM;

	FUNC3("IBM eServer i/pSeries Virtual SCSI Target Driver\n");

	ibmvstgt_transport_template =
		FUNC4(&ibmvstgt_transport_functions);
	if (!ibmvstgt_transport_template)
		return err;

	vtgtd = FUNC0("ibmvtgtd");
	if (!vtgtd)
		goto release_transport;

	err = FUNC2();
	if (err)
		goto destroy_wq;

	err = FUNC6(&ibmvstgt_driver);
	if (err)
		goto destroy_wq;

	return 0;
destroy_wq:
	FUNC1(vtgtd);
release_transport:
	FUNC5(ibmvstgt_transport_template);
	return err;
}