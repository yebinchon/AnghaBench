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
 int FUNC1 (struct hvc_iucv_private*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(uint32_t vtermno, const char *buf, int count)
{
	struct hvc_iucv_private *priv = FUNC0(vtermno);
	int queued;

	if (count <= 0)
		return 0;

	if (!priv)
		return -ENODEV;

	FUNC2(&priv->lock);
	queued = FUNC1(priv, buf, count);
	FUNC3(&priv->lock);

	return queued;
}