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
struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_idlist_t {int /*<<< orphan*/  entry; int /*<<< orphan*/  context; TYPE_1__ idlist; struct smscore_device_t* coredev; } ;
struct smscore_device_t {int /*<<< orphan*/  clientslock; } ;
struct smscore_client_t {int /*<<< orphan*/  entry; int /*<<< orphan*/  context; TYPE_1__ idlist; struct smscore_device_t* coredev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smscore_idlist_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct smscore_client_t *client)
{
	struct smscore_device_t *coredev = client->coredev;
	unsigned long flags;

	FUNC4(&coredev->clientslock, flags);


	while (!FUNC2(&client->idlist)) {
		struct smscore_idlist_t *identry =
			(struct smscore_idlist_t *) client->idlist.next;
		FUNC1(&identry->entry);
		FUNC0(identry);
	}

	FUNC3("%p", client->context);

	FUNC1(&client->entry);
	FUNC0(client);

	FUNC5(&coredev->clientslock, flags);
}