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
struct skcipher_givcrypt_request {int /*<<< orphan*/  giv; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 struct skcipher_givcrypt_request* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 int FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct crypto_async_request *req,
					   int err)
{
	struct aead_request *areq = req->data;

	if (!err) {
		struct skcipher_givcrypt_request *greq = FUNC0(areq);

		err = FUNC2(areq, greq->giv, 0);
	}

	FUNC1(areq, err);
}