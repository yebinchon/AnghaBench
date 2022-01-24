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
struct poll_table_struct {int dummy; } ;
struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {scalar_t__ next_buf; int /*<<< orphan*/  iowait; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static unsigned int FUNC1(struct file *filp,
		struct poll_table_struct *pt)
{
	struct cafe_camera *cam = filp->private_data;

	FUNC0(filp, &cam->iowait, pt);
	if (cam->next_buf >= 0)
		return POLLIN | POLLRDNORM;
	return 0;
}