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
struct dm_io_client {scalar_t__ pool; int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dm_io_client* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIN_BIOS ; 
 int /*<<< orphan*/  MIN_IOS ; 
 int /*<<< orphan*/  _dm_io_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_io_client*) ; 
 struct dm_io_client* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

struct dm_io_client *FUNC6(void)
{
	struct dm_io_client *client;

	client = FUNC3(sizeof(*client), GFP_KERNEL);
	if (!client)
		return FUNC0(-ENOMEM);

	client->pool = FUNC4(MIN_IOS, _dm_io_cache);
	if (!client->pool)
		goto bad;

	client->bios = FUNC1(MIN_BIOS, 0);
	if (!client->bios)
		goto bad;

	return client;

   bad:
	if (client->pool)
		FUNC5(client->pool);
	FUNC2(client);
	return FUNC0(-ENOMEM);
}