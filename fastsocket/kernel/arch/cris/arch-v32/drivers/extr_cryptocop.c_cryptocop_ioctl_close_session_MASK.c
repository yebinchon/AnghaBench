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
struct strcop_session_op {scalar_t__ ses_id; } ;
struct inode {int dummy; } ;
struct file {struct cryptocop_private* private_data; } ;
struct cryptocop_private {scalar_t__ sid; struct cryptocop_private* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  VERIFY_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct strcop_session_op*,int) ; 
 int FUNC3 (struct strcop_session_op*,struct strcop_session_op*,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp,
					 unsigned int cmd, unsigned long arg)
{
	struct cryptocop_private  *dev = filp->private_data;
	struct cryptocop_private  *prev_dev = NULL;
	struct strcop_session_op  *sess_op = (struct strcop_session_op *)arg;
	struct strcop_session_op  sop;
	int                       err;

	FUNC0(FUNC5("cryptocop_ioctl_close_session\n"));

	if (!FUNC2(VERIFY_READ, sess_op, sizeof(struct strcop_session_op)))
		return -EFAULT;
	err = FUNC3(&sop, sess_op, sizeof(struct strcop_session_op));
	if (err) return -EFAULT;

	while (dev && (dev->sid != sop.ses_id)) {
		prev_dev = dev;
		dev = dev->next;
	}
	if (dev){
		if (prev_dev){
			prev_dev->next = dev->next;
		} else {
			filp->private_data = dev->next;
		}
		err = FUNC4(dev->sid);
		if (err) return -EFAULT;
	} else {
		FUNC1(FUNC5("cryptocop_ioctl_close_session: session %lld not found\n", sop.ses_id));
		return -EINVAL;
	}
	return 0;
}