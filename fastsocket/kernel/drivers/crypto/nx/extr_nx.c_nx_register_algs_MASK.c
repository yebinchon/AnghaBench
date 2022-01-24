#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nx_stats {int dummy; } ;
struct TYPE_4__ {scalar_t__ flags; int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ of; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ NX_OF_FLAG_MASK_READY ; 
 int /*<<< orphan*/  NX_OKAY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nx_cbc_aes_alg ; 
 int /*<<< orphan*/  nx_ccm4309_aes_alg ; 
 int /*<<< orphan*/  nx_ccm_aes_alg ; 
 int /*<<< orphan*/  nx_ctr3686_aes_alg ; 
 int /*<<< orphan*/  nx_ctr_aes_alg ; 
 TYPE_2__ nx_driver ; 
 int /*<<< orphan*/  nx_ecb_aes_alg ; 
 int /*<<< orphan*/  nx_gcm4106_aes_alg ; 
 int /*<<< orphan*/  nx_gcm_aes_alg ; 
 int /*<<< orphan*/  nx_shash_aes_xcbc_alg ; 
 int /*<<< orphan*/  nx_shash_sha256_alg ; 
 int /*<<< orphan*/  nx_shash_sha512_alg ; 

__attribute__((used)) static int FUNC6(void)
{
	int rc = -1;

	if (nx_driver.of.flags != NX_OF_FLAG_MASK_READY)
		goto out;

	FUNC5(&nx_driver.stats, 0, sizeof(struct nx_stats));

	rc = FUNC0(&nx_driver);
	if (rc)
		goto out;

	nx_driver.of.status = NX_OKAY;

	rc = FUNC1(&nx_ecb_aes_alg);
	if (rc)
		goto out;

	rc = FUNC1(&nx_cbc_aes_alg);
	if (rc)
		goto out_unreg_ecb;

	rc = FUNC1(&nx_ctr_aes_alg);
	if (rc)
		goto out_unreg_cbc;

	rc = FUNC1(&nx_ctr3686_aes_alg);
	if (rc)
		goto out_unreg_ctr;

	rc = FUNC1(&nx_gcm_aes_alg);
	if (rc)
		goto out_unreg_ctr3686;

	rc = FUNC1(&nx_gcm4106_aes_alg);
	if (rc)
		goto out_unreg_gcm;

	rc = FUNC1(&nx_ccm_aes_alg);
	if (rc)
		goto out_unreg_gcm4106;

	rc = FUNC1(&nx_ccm4309_aes_alg);
	if (rc)
		goto out_unreg_ccm;

	rc = FUNC2(&nx_shash_sha256_alg);
	if (rc)
		goto out_unreg_ccm4309;

	rc = FUNC2(&nx_shash_sha512_alg);
	if (rc)
		goto out_unreg_s256;

	rc = FUNC2(&nx_shash_aes_xcbc_alg);
	if (rc)
		goto out_unreg_s512;

	goto out;

out_unreg_s512:
	FUNC4(&nx_shash_sha512_alg);
out_unreg_s256:
	FUNC4(&nx_shash_sha256_alg);
out_unreg_ccm4309:
	FUNC3(&nx_ccm4309_aes_alg);
out_unreg_ccm:
	FUNC3(&nx_ccm_aes_alg);
out_unreg_gcm4106:
	FUNC3(&nx_gcm4106_aes_alg);
out_unreg_gcm:
	FUNC3(&nx_gcm_aes_alg);
out_unreg_ctr3686:
	FUNC3(&nx_ctr3686_aes_alg);
out_unreg_ctr:
	FUNC3(&nx_ctr_aes_alg);
out_unreg_cbc:
	FUNC3(&nx_cbc_aes_alg);
out_unreg_ecb:
	FUNC3(&nx_ecb_aes_alg);
out:
	return rc;
}