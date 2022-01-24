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
struct firedtv {int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct firedtv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC2 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct firedtv *fdtv = FUNC0(dev);

	FUNC1(fdtv);

	FUNC5(&node_list_lock);
	FUNC4(&fdtv->list);
	FUNC6(&node_list_lock);

	FUNC2(fdtv);

	FUNC3(fdtv);
	return 0;
}