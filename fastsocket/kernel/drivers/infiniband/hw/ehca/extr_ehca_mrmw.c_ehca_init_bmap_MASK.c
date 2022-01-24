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
struct ehca_top_bmap {int dummy; } ;
struct ehca_bmap {int /*<<< orphan*/ * top; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCA_DIR_MAP_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct ehca_bmap *ehca_bmap, int top, int dir)
{
	if (!FUNC0(ehca_bmap->top[top])) {
		ehca_bmap->top[top] =
			FUNC2(sizeof(struct ehca_top_bmap), GFP_KERNEL);
		if (!ehca_bmap->top[top])
			return -ENOMEM;
		/* Set map block to 0xFF according to EHCA_INVAL_ADDR */
		FUNC3(ehca_bmap->top[top], 0xFF, EHCA_DIR_MAP_SIZE);
	}
	return FUNC1(ehca_bmap->top[top], dir);
}