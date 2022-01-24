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
struct nouveau_object {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nouveau_object* FUNC4 (struct nouveau_cli*) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_cli *cli)
{
	struct nouveau_object *client = FUNC4(cli);
	FUNC3(NULL, &cli->base.vm, NULL);
	FUNC1(&cli->base, false);
	FUNC0(&client->refcount, 1);
	FUNC2(NULL, &client);
}