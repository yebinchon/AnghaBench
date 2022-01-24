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
struct dasd_uid {int /*<<< orphan*/  serial; int /*<<< orphan*/  vendor; } ;
struct TYPE_2__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  vendor; } ;
struct alias_server {int /*<<< orphan*/  lculist; int /*<<< orphan*/  server; TYPE_1__ uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct alias_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct alias_server* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct alias_server *FUNC4(struct dasd_uid *uid)
{
	struct alias_server *server;

	server = FUNC2(sizeof(*server), GFP_KERNEL);
	if (!server)
		return FUNC0(-ENOMEM);
	FUNC3(server->uid.vendor, uid->vendor, sizeof(uid->vendor));
	FUNC3(server->uid.serial, uid->serial, sizeof(uid->serial));
	FUNC1(&server->server);
	FUNC1(&server->lculist);
	return server;
}