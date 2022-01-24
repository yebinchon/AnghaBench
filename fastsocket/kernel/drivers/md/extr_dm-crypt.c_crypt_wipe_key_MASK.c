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
typedef  int /*<<< orphan*/  u8 ;
struct crypt_config {int key_size; int /*<<< orphan*/  key; int /*<<< orphan*/  tfm; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CRYPT_KEY_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct crypt_config *cc)
{
	FUNC0(DM_CRYPT_KEY_VALID, &cc->flags);
	FUNC2(&cc->key, 0, cc->key_size * sizeof(u8));
	return FUNC1(cc->tfm, cc->key, cc->key_size);
}