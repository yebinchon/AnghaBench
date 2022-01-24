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
struct ksign_public_key {scalar_t__ expiredate; scalar_t__ timestamp; int /*<<< orphan*/  link; int /*<<< orphan*/  count; int /*<<< orphan*/ * keyid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  keyring ; 
 int /*<<< orphan*/  keyring_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ksign_public_key *pk, void *data)
{
	FUNC4("- Added public key %X%X\n", pk->keyid[0], pk->keyid[1]);

	if (pk->expiredate && pk->expiredate < FUNC2())
		FUNC4("  - public key has expired\n");

	if (pk->timestamp > FUNC2())
		FUNC4("  - key was been created %lu seconds in future\n",
		       pk->timestamp - FUNC2());

	FUNC0(&pk->count);

	FUNC1(&keyring_sem);
	FUNC3(&pk->link, &keyring);
	FUNC5(&keyring_sem);

	return 0;
}