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
struct dm_pool_metadata {int /*<<< orphan*/  bm; int /*<<< orphan*/  tm; int /*<<< orphan*/  nb_tm; int /*<<< orphan*/  metadata_sm; int /*<<< orphan*/  data_sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dm_pool_metadata *pmd)
{
	FUNC1(pmd->data_sm);
	FUNC1(pmd->metadata_sm);
	FUNC2(pmd->nb_tm);
	FUNC2(pmd->tm);
	FUNC0(pmd->bm);
}