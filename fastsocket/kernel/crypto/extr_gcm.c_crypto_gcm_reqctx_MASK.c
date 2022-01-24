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
typedef  void crypto_gcm_req_priv_ctx ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (struct aead_request*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 

__attribute__((used)) static inline struct crypto_gcm_req_priv_ctx *FUNC4(
	struct aead_request *req)
{
	unsigned long align = FUNC2(FUNC3(req));

	return (void *)FUNC0((u8 *)FUNC1(req), align + 1);
}