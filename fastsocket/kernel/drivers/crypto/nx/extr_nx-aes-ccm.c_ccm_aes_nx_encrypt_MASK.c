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
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  info; struct crypto_blkcipher* tfm; } ;
struct TYPE_2__ {scalar_t__ tfm; } ;
struct aead_request {TYPE_1__ base; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int FUNC0 (struct aead_request*,struct blkcipher_desc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct aead_request *req)
{
	struct blkcipher_desc desc;
	int rc;

	desc.info = req->iv;
	desc.tfm = (struct crypto_blkcipher *)req->base.tfm;

	rc = FUNC1(desc.info);
	if (rc)
		return rc;

	return FUNC0(req, &desc);
}