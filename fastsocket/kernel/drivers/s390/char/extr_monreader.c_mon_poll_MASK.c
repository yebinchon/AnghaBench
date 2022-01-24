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
struct mon_private {int /*<<< orphan*/  read_ready; int /*<<< orphan*/  iucv_severed; } ;
struct file {struct mon_private* private_data; } ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mon_read_wait_queue ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *filp, struct poll_table_struct *p)
{
	struct mon_private *monpriv = filp->private_data;

	FUNC1(filp, &mon_read_wait_queue, p);
	if (FUNC2(FUNC0(&monpriv->iucv_severed)))
		return POLLERR;
	if (FUNC0(&monpriv->read_ready))
		return POLLIN | POLLRDNORM;
	return 0;
}