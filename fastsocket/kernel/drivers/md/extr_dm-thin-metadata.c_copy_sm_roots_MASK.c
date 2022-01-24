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
struct thin_disk_superblock {int /*<<< orphan*/  data_space_map_root; int /*<<< orphan*/  metadata_space_map_root; } ;
struct dm_pool_metadata {int /*<<< orphan*/  data_space_map_root; int /*<<< orphan*/  metadata_space_map_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct dm_pool_metadata *pmd,
			  struct thin_disk_superblock *disk)
{
	FUNC0(&disk->metadata_space_map_root,
	       &pmd->metadata_space_map_root,
	       sizeof(pmd->metadata_space_map_root));

	FUNC0(&disk->data_space_map_root,
	       &pmd->data_space_map_root,
	       sizeof(pmd->data_space_map_root));
}