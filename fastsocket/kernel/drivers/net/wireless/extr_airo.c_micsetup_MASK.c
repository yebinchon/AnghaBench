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
struct airo_info {TYPE_2__* mod; int /*<<< orphan*/ * tfm; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  miccntx ;
struct TYPE_4__ {int /*<<< orphan*/  uCtx; int /*<<< orphan*/  mCtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_MODULES ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct airo_info *ai) {
	int i;

	if (ai->tfm == NULL)
	        ai->tfm = FUNC2("aes", 0, CRYPTO_ALG_ASYNC);

        if (FUNC0(ai->tfm)) {
                FUNC1(ai->dev->name, "failed to load transform for AES");
                ai->tfm = NULL;
                return ERROR;
        }

	for (i=0; i < NUM_MODULES; i++) {
		FUNC3(&ai->mod[i].mCtx,0,sizeof(miccntx));
		FUNC3(&ai->mod[i].uCtx,0,sizeof(miccntx));
	}
	return SUCCESS;
}