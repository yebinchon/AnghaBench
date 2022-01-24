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
typedef  int /*<<< orphan*/  u_char ;
struct mtd_info {scalar_t__ size; struct ms02nv_private* priv; } ;
struct ms02nv_private {scalar_t__ uaddr; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd, loff_t to,
			size_t len, size_t *retlen, const u_char *buf)
{
	struct ms02nv_private *mp = mtd->priv;

	if (to + len > mtd->size)
		return -EINVAL;

	FUNC0(mp->uaddr + to, buf, len);
	*retlen = len;

	return 0;
}