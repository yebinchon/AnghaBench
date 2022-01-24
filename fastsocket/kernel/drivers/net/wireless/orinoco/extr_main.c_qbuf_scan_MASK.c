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
struct orinoco_scan_data {int len; int type; int /*<<< orphan*/  list; void* buf; } ;
struct orinoco_private {int /*<<< orphan*/  process_scan; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  scan_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct orinoco_scan_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct orinoco_private *priv, void *buf,
		      int len, int type)
{
	struct orinoco_scan_data *sd;
	unsigned long flags;

	sd = FUNC0(sizeof(*sd), GFP_ATOMIC);
	if (!sd)
		return;

	sd->buf = buf;
	sd->len = len;
	sd->type = type;

	FUNC3(&priv->scan_lock, flags);
	FUNC1(&sd->list, &priv->scan_list);
	FUNC4(&priv->scan_lock, flags);

	FUNC2(&priv->process_scan);
}