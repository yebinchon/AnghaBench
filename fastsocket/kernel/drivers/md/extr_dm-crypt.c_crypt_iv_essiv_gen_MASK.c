#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  tfm; } ;
struct TYPE_4__ {TYPE_1__ essiv; } ;
struct crypt_config {TYPE_2__ iv_gen_private; int /*<<< orphan*/  iv_size; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct crypt_config *cc, u8 *iv, sector_t sector)
{
	FUNC2(iv, 0, cc->iv_size);
	*(u64 *)iv = FUNC0(sector);
	FUNC1(cc->iv_gen_private.essiv.tfm, iv, iv);
	return 0;
}