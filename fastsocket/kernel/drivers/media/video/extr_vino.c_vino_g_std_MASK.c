#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vino_channel_settings {size_t data_norm; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  std; } ;
struct TYPE_3__ {int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 TYPE_2__* vino_data_norms ; 
 TYPE_1__* vino_drvdata ; 

__attribute__((used)) static int FUNC4(struct file *file, void *__fh,
			   v4l2_std_id *std)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	unsigned long flags;

	FUNC1(&vino_drvdata->input_lock, flags);

	*std = vino_data_norms[vcs->data_norm].std;
	FUNC0("current standard = %d\n", vcs->data_norm);

	FUNC2(&vino_drvdata->input_lock, flags);

	return 0;
}