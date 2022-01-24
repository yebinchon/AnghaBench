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
struct nouveau_client {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_client*,char*,char const*,...) ; 

int
FUNC2(struct nouveau_client *client, bool suspend)
{
	const char *name[2] = { "fini", "suspend" };
	int ret;

	FUNC1(client, "%s running\n", name[suspend]);
	ret = FUNC0(client->root, suspend);
	FUNC1(client, "%s completed with %d\n", name[suspend], ret);
	return ret;
}