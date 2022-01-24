#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {void* nctrls; void* ctrls; } ;
struct TYPE_6__ {void* nmodes; void* cam_mode; } ;
struct TYPE_7__ {TYPE_1__ cam; } ;
struct sd {struct hdcs* sensor_priv; TYPE_3__ desc; TYPE_2__ gspca_dev; } ;
struct TYPE_10__ {int cto; int cpo; int rs; int er; } ;
struct TYPE_9__ {int left; int top; int height; int border; int /*<<< orphan*/  width; } ;
struct hdcs {int psmp; TYPE_5__ exp; TYPE_4__ array; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDCS_1020_DEF_WIDTH ; 
 int /*<<< orphan*/  HDCS_IDENT ; 
 void* hdcs1020_ctrl ; 
 void* hdcs1020_mode ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct hdcs* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sd*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct sd *sd)
{
	struct hdcs *hdcs;
	u16 sensor;
	int ret;

	ret = FUNC3(sd, HDCS_IDENT, &sensor);
	if (ret < 0 || sensor != 0x10)
		return -ENODEV;

	FUNC1("HDCS-1020 sensor detected");

	sd->gspca_dev.cam.cam_mode = hdcs1020_mode;
	sd->gspca_dev.cam.nmodes = FUNC0(hdcs1020_mode);
	sd->desc.ctrls = hdcs1020_ctrl;
	sd->desc.nctrls = FUNC0(hdcs1020_ctrl);

	hdcs = FUNC2(sizeof(struct hdcs), GFP_KERNEL);
	if (!hdcs)
		return -ENOMEM;

	/*
	 * From Andrey's test image: looks like HDCS-1020 upper-left
	 * visible pixel is at 24,8 (y maybe even smaller?) and lower-right
	 * visible pixel at 375,299 (x maybe even larger?)
	 */
	hdcs->array.left = 24;
	hdcs->array.top  = 4;
	hdcs->array.width = HDCS_1020_DEF_WIDTH;
	hdcs->array.height = 304;
	hdcs->array.border = 4;

	hdcs->psmp = 6;

	hdcs->exp.cto = 3;
	hdcs->exp.cpo = 3;
	hdcs->exp.rs = 155;
	hdcs->exp.er = 96;

	sd->sensor_priv = hdcs;

	return 0;
}