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
struct vnic_wq_buf {int dummy; } ;
struct vnic_wq {int dummy; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnic_wq*,struct vnic_wq_buf*) ; 

__attribute__((used)) static void FUNC1(struct vnic_wq *wq,
	struct cq_desc *cq_desc, struct vnic_wq_buf *buf, void *opaque)
{
	FUNC0(wq, buf);
}