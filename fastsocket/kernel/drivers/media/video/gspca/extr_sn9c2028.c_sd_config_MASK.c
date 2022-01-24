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
struct usb_device_id {int idProduct; int /*<<< orphan*/  idVendor; } ;
struct sd {int model; } ;
struct cam {int input_flags; void* nmodes; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int V4L2_IN_ST_HFLIP ; 
 int V4L2_IN_ST_VFLIP ; 
 void* cif_mode ; 
 void* vga_mode ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev,
		     const struct usb_device_id *id)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam = &gspca_dev->cam;

	FUNC1(D_PROBE, "SN9C2028 camera detected (vid/pid 0x%04X:0x%04X)",
	       id->idVendor, id->idProduct);

	sd->model = id->idProduct;

	switch (sd->model) {
	case 0x7005:
		FUNC1(D_PROBE, "Genius Smart 300 camera");
		break;
	case 0x8000:
		FUNC1(D_PROBE, "DC31VC");
		break;
	case 0x8001:
		FUNC1(D_PROBE, "Spy camera");
		break;
	case 0x8003:
		FUNC1(D_PROBE, "CIF camera");
		break;
	case 0x8008:
		FUNC1(D_PROBE, "Mini-Shotz ms-350 camera");
		break;
	case 0x800a:
		FUNC1(D_PROBE, "Vivitar 3350b type camera");
		cam->input_flags = V4L2_IN_ST_VFLIP | V4L2_IN_ST_HFLIP;
		break;
	}

	switch (sd->model) {
	case 0x8000:
	case 0x8001:
	case 0x8003:
		cam->cam_mode = cif_mode;
		cam->nmodes = FUNC0(cif_mode);
		break;
	default:
		cam->cam_mode = vga_mode;
		cam->nmodes = FUNC0(vga_mode);
	}
	return 0;
}