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
struct subch_data_s {int /*<<< orphan*/  sd_subch; int /*<<< orphan*/  sd_nasid; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGI_UART_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct subch_data_s*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct subch_data_s*) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, struct file *file)
{
	struct subch_data_s *sd = (struct subch_data_s *) file->private_data;
	int rv;

	/* free the interrupt */
	FUNC0(SGI_UART_VECTOR, sd);

	/* ask SAL to close the subchannel */
	rv = FUNC1(sd->sd_nasid, sd->sd_subch);

	FUNC2(sd);
	return rv;
}