#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct nouveau_object {int dummy; } ;
struct nouveau_client {int /*<<< orphan*/  debug; int /*<<< orphan*/  name; int /*<<< orphan*/  device; int /*<<< orphan*/  root; } ;
struct TYPE_4__ {int /*<<< orphan*/  usecount; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NV_CLIENT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nouveau_client_oclass ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nouveau_device_sclass ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_object*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct nouveau_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char const*) ; 

int
FUNC8(const char *name, u64 devname, const char *cfg,
		       const char *dbg, int length, void **pobject)
{
	struct nouveau_object *device;
	struct nouveau_client *client;
	int ret;

	device = (void *)FUNC2(devname);
	if (!device)
		return -ENODEV;

	ret = FUNC4(NULL, NULL, &nouveau_client_oclass,
				     NV_CLIENT_CLASS, nouveau_device_sclass,
				     0, length, pobject);
	client = *pobject;
	if (ret)
		return ret;

	ret = FUNC3(FUNC6(client), ~0, ~0,
				    FUNC6(client), &client->root);
	if (ret)
		return ret;

	/* prevent init/fini being called, os in in charge of this */
	FUNC0(&FUNC6(client)->usecount, 2);

	FUNC5(device, &client->device);
	FUNC7(client->name, sizeof(client->name), "%s", name);
	client->debug = FUNC1(dbg, "CLIENT");
	return 0;
}