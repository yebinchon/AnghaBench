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
typedef  int /*<<< orphan*/  u64 ;
struct res_common {int /*<<< orphan*/  from_state; int /*<<< orphan*/  state; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 struct res_common* FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx4_dev *dev, int slave, u64 res_id,
		    enum mlx4_resource type)
{
	struct res_common *r;

	FUNC2(FUNC1(dev));
	r = FUNC0(dev, res_id, type);
	if (r)
		r->state = r->from_state;
	FUNC3(FUNC1(dev));
}