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
typedef  int /*<<< orphan*/  u8 ;
struct ib_cm_compare_data {int /*<<< orphan*/  mask; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int IB_CM_COMPARE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct ib_cm_compare_data *src_data,
			   struct ib_cm_compare_data *dst_data)
{
	u8 src[IB_CM_COMPARE_SIZE];
	u8 dst[IB_CM_COMPARE_SIZE];

	if (!src_data || !dst_data)
		return 0;

	FUNC0(src, src_data->data, dst_data->mask);
	FUNC0(dst, dst_data->data, src_data->mask);
	return FUNC1(src, dst, IB_CM_COMPARE_SIZE);
}