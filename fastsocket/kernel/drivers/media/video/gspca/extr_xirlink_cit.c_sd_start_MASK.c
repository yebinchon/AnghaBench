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
struct sd {int model; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
#define  CIT_IBM_NETCAM_PRO 133 
#define  CIT_MODEL0 132 
#define  CIT_MODEL1 131 
#define  CIT_MODEL2 130 
#define  CIT_MODEL3 129 
#define  CIT_MODEL4 128 
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static int FUNC15(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int packet_size;

	packet_size = FUNC0(gspca_dev);
	if (packet_size < 0)
		return packet_size;

	switch (sd->model) {
	case CIT_MODEL0:
		FUNC9(gspca_dev);
		break;
	case CIT_MODEL1:
		FUNC10(gspca_dev);
		break;
	case CIT_MODEL2:
		FUNC11(gspca_dev);
		break;
	case CIT_MODEL3:
		FUNC12(gspca_dev);
		break;
	case CIT_MODEL4:
		FUNC13(gspca_dev);
		break;
	case CIT_IBM_NETCAM_PRO:
		FUNC8(gspca_dev);
		break;
	}

	FUNC2(gspca_dev);
	FUNC3(gspca_dev);
	FUNC5(gspca_dev);
	FUNC7(gspca_dev);
	FUNC6(gspca_dev);
	FUNC4(gspca_dev);

	/* Program max isoc packet size */
	FUNC14(gspca_dev, packet_size >> 8, 0x0106);
	FUNC14(gspca_dev, packet_size & 0xff, 0x0107);

	FUNC1(gspca_dev);

	return 0;
}