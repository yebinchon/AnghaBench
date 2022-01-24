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
struct bnx2x_fastpath {scalar_t__ rx_buf_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ NET_SKB_PAD ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(const struct bnx2x_fastpath *fp, gfp_t gfp_mask)
{
	return FUNC0(fp->rx_buf_size + NET_SKB_PAD, gfp_mask);
}