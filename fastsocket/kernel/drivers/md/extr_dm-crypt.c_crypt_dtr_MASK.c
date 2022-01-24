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
struct dm_target {struct crypt_config* private; } ;
struct crypt_config {struct crypt_config* cipher_mode; struct crypt_config* cipher; scalar_t__ dev; scalar_t__ tfm; TYPE_1__* iv_gen_ops; scalar_t__ io_pool; scalar_t__ req_pool; scalar_t__ page_pool; scalar_t__ bs; scalar_t__ crypt_queue; scalar_t__ io_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dtr ) (struct crypt_config*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct crypt_config*) ; 

__attribute__((used)) static void FUNC8(struct dm_target *ti)
{
	struct crypt_config *cc = ti->private;

	ti->private = NULL;

	if (!cc)
		return;

	if (cc->io_queue)
		FUNC3(cc->io_queue);
	if (cc->crypt_queue)
		FUNC3(cc->crypt_queue);

	if (cc->bs)
		FUNC1(cc->bs);

	if (cc->page_pool)
		FUNC6(cc->page_pool);
	if (cc->req_pool)
		FUNC6(cc->req_pool);
	if (cc->io_pool)
		FUNC6(cc->io_pool);

	if (cc->iv_gen_ops && cc->iv_gen_ops->dtr)
		cc->iv_gen_ops->dtr(cc);

	if (cc->tfm && !FUNC0(cc->tfm))
		FUNC2(cc->tfm);

	if (cc->dev)
		FUNC4(ti, cc->dev);

	FUNC5(cc->cipher);
	FUNC5(cc->cipher_mode);

	/* Must zero key material before freeing */
	FUNC5(cc);
}