#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_format_xlate {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {unsigned int num_user_formats; TYPE_2__* user_formats; TYPE_2__* current_fmt; TYPE_6__ dev; } ;
typedef  enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;
struct TYPE_8__ {int code; int /*<<< orphan*/  host_fmt; } ;
struct TYPE_7__ {int (* get_formats ) (struct soc_camera_device*,unsigned int,TYPE_2__*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,unsigned int) ; 
 int /*<<< orphan*/  enum_mbus_fmt ; 
 struct v4l2_subdev* FUNC1 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct soc_camera_device*,unsigned int,TYPE_2__*) ; 
 int FUNC4 (struct soc_camera_device*,unsigned int,TYPE_2__*) ; 
 struct soc_camera_host* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  video ; 
 TYPE_2__* FUNC8 (unsigned int) ; 

__attribute__((used)) static int FUNC9(struct soc_camera_device *icd)
{
	struct v4l2_subdev *sd = FUNC1(icd);
	struct soc_camera_host *ici = FUNC5(icd->dev.parent);
	unsigned int i, fmts = 0, raw_fmts = 0;
	int ret;
	enum v4l2_mbus_pixelcode code;

	while (!FUNC6(sd, video, enum_mbus_fmt, raw_fmts, &code))
		raw_fmts++;

	if (!ici->ops->get_formats)
		/*
		 * Fallback mode - the host will have to serve all
		 * sensor-provided formats one-to-one to the user
		 */
		fmts = raw_fmts;
	else
		/*
		 * First pass - only count formats this host-sensor
		 * configuration can provide
		 */
		for (i = 0; i < raw_fmts; i++) {
			ret = ici->ops->get_formats(icd, i, NULL);
			if (ret < 0)
				return ret;
			fmts += ret;
		}

	if (!fmts)
		return -ENXIO;

	icd->user_formats =
		FUNC8(fmts * sizeof(struct soc_camera_format_xlate));
	if (!icd->user_formats)
		return -ENOMEM;

	icd->num_user_formats = fmts;

	FUNC0(&icd->dev, "Found %d supported formats.\n", fmts);

	/* Second pass - actually fill data formats */
	fmts = 0;
	for (i = 0; i < raw_fmts; i++)
		if (!ici->ops->get_formats) {
			FUNC6(sd, video, enum_mbus_fmt, i, &code);
			icd->user_formats[i].host_fmt =
				FUNC2(code);
			icd->user_formats[i].code = code;
		} else {
			ret = ici->ops->get_formats(icd, i,
						    &icd->user_formats[fmts]);
			if (ret < 0)
				goto egfmt;
			fmts += ret;
		}

	icd->current_fmt = &icd->user_formats[0];

	return 0;

egfmt:
	icd->num_user_formats = 0;
	FUNC7(icd->user_formats);
	return ret;
}