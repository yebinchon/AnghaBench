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
struct TYPE_2__ {int /*<<< orphan*/  info; } ;
struct skcipher_givcrypt_request {TYPE_1__ creq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ablkcipher_request* FUNC3 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC4 (struct skcipher_givcrypt_request*) ; 

__attribute__((used)) static void FUNC5(struct skcipher_givcrypt_request *req, int err)
{
	struct ablkcipher_request *subreq = FUNC3(req);
	struct crypto_ablkcipher *geniv;

	if (err == -EINPROGRESS)
		return;

	if (err)
		goto out;

	geniv = FUNC4(req);
	FUNC2(req->creq.info, subreq->info, FUNC0(geniv));

out:
	FUNC1(subreq->info);
}