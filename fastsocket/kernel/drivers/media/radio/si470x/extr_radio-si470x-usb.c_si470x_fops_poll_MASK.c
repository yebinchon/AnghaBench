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
struct si470x_device {int* registers; scalar_t__ rd_index; scalar_t__ wr_index; int /*<<< orphan*/  read_queue; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLRDNORM ; 
 size_t SYSCONFIG1 ; 
 int SYSCONFIG1_RDS ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct si470x_device*) ; 
 struct si470x_device* FUNC2 (struct file*) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file,
		struct poll_table_struct *pts)
{
	struct si470x_device *radio = FUNC2(file);
	int retval = 0;

	/* switch on rds reception */
	if ((radio->registers[SYSCONFIG1] & SYSCONFIG1_RDS) == 0)
		FUNC1(radio);

	FUNC0(file, &radio->read_queue, pts);

	if (radio->rd_index != radio->wr_index)
		retval = POLLIN | POLLRDNORM;

	return retval;
}