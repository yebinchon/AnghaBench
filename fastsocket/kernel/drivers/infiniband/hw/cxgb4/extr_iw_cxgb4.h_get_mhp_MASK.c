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
typedef  int /*<<< orphan*/  u32 ;
struct c4iw_mr {int dummy; } ;
struct c4iw_dev {int /*<<< orphan*/  mmidr; } ;

/* Variables and functions */
 struct c4iw_mr* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct c4iw_mr *FUNC1(struct c4iw_dev *rhp, u32 mmid)
{
	return FUNC0(&rhp->mmidr, mmid);
}