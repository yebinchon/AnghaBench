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
struct osd_dev {struct file* file; } ;
struct osd_uld_device {struct osd_dev od; } ;
struct file {struct osd_uld_device* private_data; int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct osd_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC3 (struct file*) ; 
 struct file* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct osd_dev*) ; 
 struct osd_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osd_fops ; 

struct osd_dev *FUNC8(const char *name)
{
	struct osd_uld_device *oud;
	struct osd_dev *od;
	struct file *file;
	int error;

	if (!name || !*name) {
		FUNC2("Mount with !path || !*path\n");
		return FUNC0(-EINVAL);
	}

	od = FUNC7(sizeof(*od), GFP_KERNEL);
	if (!od)
		return FUNC0(-ENOMEM);

	file = FUNC4(name, O_RDWR, 0);
	if (FUNC1(file)) {
		error = FUNC3(file);
		goto free_od;
	}

	if (file->f_op != &osd_fops){
		error = -EINVAL;
		goto close_file;
	}

	oud = file->private_data;

	*od = oud->od;
	od->file = file;

	return od;

close_file:
	FUNC5(file);
free_od:
	FUNC6(od);
	return FUNC0(error);
}