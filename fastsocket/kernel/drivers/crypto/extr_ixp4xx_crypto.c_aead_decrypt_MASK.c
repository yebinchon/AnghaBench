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
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; scalar_t__ assoclen; } ;

/* Variables and functions */
 int FUNC0 (struct aead_request*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	unsigned ivsize = FUNC1(FUNC2(req));
	return FUNC0(req, 0, req->assoclen + ivsize,
			req->cryptlen, req->iv);
}