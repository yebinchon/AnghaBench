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
typedef  int /*<<< orphan*/  uint32_t ;
struct hvc_iucv_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 struct hvc_iucv_private* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hvc_iucv_private*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(uint32_t vtermno, char *buf, int count)
{
	struct hvc_iucv_private *priv = FUNC0(vtermno);
	int written;
	int has_more_data;

	if (count <= 0)
		return 0;

	if (!priv)
		return -ENODEV;

	FUNC3(&priv->lock);
	has_more_data = 0;
	written = FUNC1(priv, buf, count, &has_more_data);
	FUNC4(&priv->lock);

	/* if there are still messages on the queue... schedule another run */
	if (has_more_data)
		FUNC2();

	return written;
}