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
struct firedtv {int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  directory; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_MODEL ; 
 int ENOMEM ; 
 int MAX_MODEL_NAME_LEN ; 
 int FUNC0 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC1 (struct firedtv*) ; 
 int /*<<< orphan*/  backend ; 
 struct firedtv* FUNC2 (struct device*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct firedtv*) ; 
 int FUNC4 (struct firedtv*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct firedtv*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_list ; 
 int /*<<< orphan*/  node_list_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct firedtv *fdtv;
	char name[MAX_MODEL_NAME_LEN];
	int name_len, err;

	name_len = FUNC6(FUNC7(dev)->directory, CSR_MODEL,
				 name, sizeof(name));

	fdtv = FUNC2(dev, &backend, name, name_len >= 0 ? name_len : 0);
	if (!fdtv)
		return -ENOMEM;

	err = FUNC4(fdtv, dev);
	if (err)
		goto fail_free;

	FUNC11(&node_list_lock);
	FUNC9(&fdtv->list, &node_list);
	FUNC12(&node_list_lock);

	err = FUNC0(fdtv);
	if (err)
		goto fail;

	err = FUNC3(fdtv);
	if (err)
		goto fail;

	FUNC1(fdtv);

	return 0;
fail:
	FUNC11(&node_list_lock);
	FUNC10(&fdtv->list);
	FUNC12(&node_list_lock);
	FUNC5(fdtv);
fail_free:
	FUNC8(fdtv);

	return err;
}