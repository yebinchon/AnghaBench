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
struct crypt_config {scalar_t__ req; int /*<<< orphan*/  tfm; int /*<<< orphan*/  req_pool; } ;
struct convert_context {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*,scalar_t__) ; 
 int /*<<< orphan*/  kcryptd_async_done ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypt_config *cc,
			    struct convert_context *ctx)
{
	if (!cc->req)
		cc->req = FUNC3(cc->req_pool, GFP_NOIO);
	FUNC1(cc->req, cc->tfm);
	FUNC0(cc->req, CRYPTO_TFM_REQ_MAY_BACKLOG |
					CRYPTO_TFM_REQ_MAY_SLEEP,
					kcryptd_async_done,
					FUNC2(cc, cc->req));
}