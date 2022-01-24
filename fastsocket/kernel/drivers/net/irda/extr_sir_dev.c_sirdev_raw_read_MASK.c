#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int len; int data; } ;
struct sir_dev {TYPE_1__ rx_buff; int /*<<< orphan*/  enable_rx; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

int FUNC2(struct sir_dev *dev, char *buf, int len)
{
	int count;

	if (FUNC0(&dev->enable_rx))
		return -EIO;		/* fail if we expect irda-frames */

	count = (len < dev->rx_buff.len) ? len : dev->rx_buff.len;

	if (count > 0) {
		FUNC1(buf, dev->rx_buff.data, count);
		dev->rx_buff.data += count;
		dev->rx_buff.len -= count;
	}

	/* remaining stuff gets flushed when re-enabling normal rx */

	return count;
}