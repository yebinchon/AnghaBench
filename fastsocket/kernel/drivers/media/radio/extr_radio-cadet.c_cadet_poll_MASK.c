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
struct file {int dummy; } ;
struct cadet {scalar_t__ rdsin; scalar_t__ rdsout; int /*<<< orphan*/  read_queue; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 struct cadet* FUNC1 (struct file*) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *file, struct poll_table_struct *wait)
{
	struct cadet *dev = FUNC1(file);

	FUNC0(file, &dev->read_queue, wait);
	if (dev->rdsin != dev->rdsout)
		return POLLIN | POLLRDNORM;
	return 0;
}