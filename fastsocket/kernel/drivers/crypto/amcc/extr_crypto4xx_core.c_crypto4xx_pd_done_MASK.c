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
typedef  int u32 ;
struct pd_uinfo {TYPE_1__* async_req; } ;
struct crypto4xx_device {struct pd_uinfo* pdr_uinfo; struct ce_pd* pdr; } ;
struct ce_pd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_ALG_TYPE_ABLKCIPHER ; 
 int FUNC0 (struct crypto4xx_device*,struct pd_uinfo*,struct ce_pd*) ; 
 int FUNC1 (struct crypto4xx_device*,struct pd_uinfo*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct crypto4xx_device *dev, u32 idx)
{
	struct ce_pd *pd;
	struct pd_uinfo *pd_uinfo;

	pd =  dev->pdr + sizeof(struct ce_pd)*idx;
	pd_uinfo = dev->pdr_uinfo + sizeof(struct pd_uinfo)*idx;
	if (FUNC2(pd_uinfo->async_req->tfm) ==
			CRYPTO_ALG_TYPE_ABLKCIPHER)
		return FUNC0(dev, pd_uinfo, pd);
	else
		return FUNC1(dev, pd_uinfo);
}