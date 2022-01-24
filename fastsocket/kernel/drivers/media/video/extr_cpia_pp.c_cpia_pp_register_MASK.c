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
struct pp_cam_entry {scalar_t__ stream_irq; scalar_t__ streaming; int /*<<< orphan*/  wq_stream; struct parport* port; struct pardevice* pdev; } ;
struct parport {int modes; } ;
struct pardevice {int dummy; } ;
struct cam_data {int /*<<< orphan*/  cam_data_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PARPORT_MODE_PCSPP ; 
 int /*<<< orphan*/  cam_list ; 
 int /*<<< orphan*/  cam_list_lock_pp ; 
 int /*<<< orphan*/  cpia_pp_ops ; 
 struct cam_data* FUNC1 (int /*<<< orphan*/ *,struct pp_cam_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_cam_entry*) ; 
 struct pp_cam_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pardevice* FUNC6 (struct parport*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pp_cam_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct parport *port)
{
	struct pardevice *pdev = NULL;
	struct pp_cam_entry *cam;
	struct cam_data *cpia;

	if (!(port->modes & PARPORT_MODE_PCSPP)) {
		FUNC0("port is not supported by CPiA driver\n");
		return -ENXIO;
	}

	cam = FUNC4(sizeof(struct pp_cam_entry), GFP_KERNEL);
	if (cam == NULL) {
		FUNC0("failed to allocate camera structure\n");
		return -ENOMEM;
	}

	pdev = FUNC6(port, "cpia_pp", NULL, NULL,
				       NULL, 0, cam);

	if (!pdev) {
		FUNC0("failed to parport_register_device\n");
		FUNC3(cam);
		return -ENXIO;
	}

	cam->pdev = pdev;
	cam->port = port;
	FUNC2(&cam->wq_stream);

	cam->streaming = 0;
	cam->stream_irq = 0;

	if((cpia = FUNC1(&cpia_pp_ops, cam)) == NULL) {
		FUNC0("failed to cpia_register_camera\n");
		FUNC7(pdev);
		FUNC3(cam);
		return -ENXIO;
	}
	FUNC8( &cam_list_lock_pp );
	FUNC5( &cpia->cam_data_list, &cam_list );
	FUNC9( &cam_list_lock_pp );

	return 0;
}