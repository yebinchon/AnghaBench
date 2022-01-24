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
struct ehca_top_bmap {int /*<<< orphan*/ * dir; } ;
struct ehca_dir_bmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCA_ENT_MAP_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct ehca_top_bmap *ehca_top_bmap,
				     int dir)
{
	if (!FUNC0(ehca_top_bmap->dir[dir])) {
		ehca_top_bmap->dir[dir] =
			FUNC1(sizeof(struct ehca_dir_bmap), GFP_KERNEL);
		if (!ehca_top_bmap->dir[dir])
			return -ENOMEM;
		/* Set map block to 0xFF according to EHCA_INVAL_ADDR */
		FUNC2(ehca_top_bmap->dir[dir], 0xFF, EHCA_ENT_MAP_SIZE);
	}
	return 0;
}