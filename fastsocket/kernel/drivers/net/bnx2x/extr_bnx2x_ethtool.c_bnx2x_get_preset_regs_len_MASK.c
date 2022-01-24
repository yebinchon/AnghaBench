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
struct net_device {int dummy; } ;
struct dump_header {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, u32 preset)
{
	struct bnx2x *bp = FUNC1(dev);
	int regdump_len = 0;

	regdump_len = FUNC0(bp, preset);
	regdump_len *= 4;
	regdump_len += sizeof(struct dump_header);

	return regdump_len;
}