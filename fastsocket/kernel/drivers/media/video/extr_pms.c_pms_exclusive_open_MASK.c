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
struct video_device {int dummy; } ;
struct pms_device {int /*<<< orphan*/  in_use; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct video_device* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file)
{
	struct video_device *v = FUNC1(file);
	struct pms_device *pd = (struct pms_device *)v;

	return FUNC0(0, &pd->in_use) ? -EBUSY : 0;
}