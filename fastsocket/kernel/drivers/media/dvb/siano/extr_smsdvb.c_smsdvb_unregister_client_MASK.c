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
struct smsdvb_client_t {int /*<<< orphan*/  adapter; int /*<<< orphan*/  demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  frontend; int /*<<< orphan*/  smsclient; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct smsdvb_client_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct smsdvb_client_t *client)
{
	/* must be called under clientslock */

	FUNC5(&client->entry);

	FUNC6(client->smsclient);
	FUNC3(&client->frontend);
	FUNC1(&client->dmxdev);
	FUNC0(&client->demux);
	FUNC2(&client->adapter);
	FUNC4(client);
}