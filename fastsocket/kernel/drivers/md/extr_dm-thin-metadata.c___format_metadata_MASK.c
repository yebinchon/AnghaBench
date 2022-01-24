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
struct dm_pool_metadata {int /*<<< orphan*/  metadata_sm; int /*<<< orphan*/  tm; int /*<<< orphan*/  data_sm; int /*<<< orphan*/  nb_tm; int /*<<< orphan*/  details_root; int /*<<< orphan*/  details_info; int /*<<< orphan*/  root; int /*<<< orphan*/  info; int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIN_SUPERBLOCK_LOCATION ; 
 int /*<<< orphan*/  FUNC3 (struct dm_pool_metadata*) ; 
 int FUNC4 (struct dm_pool_metadata*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dm_pool_metadata *pmd)
{
	int r;

	r = FUNC9(pmd->bm, THIN_SUPERBLOCK_LOCATION,
				 &pmd->tm, &pmd->metadata_sm);
	if (r < 0) {
		FUNC0("tm_create_with_sm failed");
		return r;
	}

	pmd->data_sm = FUNC7(pmd->tm, 0);
	if (FUNC1(pmd->data_sm)) {
		FUNC0("sm_disk_create failed");
		r = FUNC2(pmd->data_sm);
		goto bad_cleanup_tm;
	}

	pmd->nb_tm = FUNC8(pmd->tm);
	if (!pmd->nb_tm) {
		FUNC0("could not create non-blocking clone tm");
		r = -ENOMEM;
		goto bad_cleanup_data_sm;
	}

	FUNC3(pmd);

	r = FUNC5(&pmd->info, &pmd->root);
	if (r < 0)
		goto bad_cleanup_nb_tm;

	r = FUNC5(&pmd->details_info, &pmd->details_root);
	if (r < 0) {
		FUNC0("couldn't create devices root");
		goto bad_cleanup_nb_tm;
	}

	r = FUNC4(pmd);
	if (r)
		goto bad_cleanup_nb_tm;

	return 0;

bad_cleanup_nb_tm:
	FUNC10(pmd->nb_tm);
bad_cleanup_data_sm:
	FUNC6(pmd->data_sm);
bad_cleanup_tm:
	FUNC10(pmd->tm);
	FUNC6(pmd->metadata_sm);

	return r;
}