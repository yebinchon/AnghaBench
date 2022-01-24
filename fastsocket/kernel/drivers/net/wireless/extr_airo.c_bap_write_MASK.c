#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct airo_info {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ DATA0 ; 
 int SUCCESS ; 
 int /*<<< orphan*/  do8bitIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(struct airo_info *ai, const __le16 *pu16Src,
		     int bytelen, int whichbap)
{
	bytelen = (bytelen + 1) & (~1); // round up to even value
	if ( !do8bitIO )
		FUNC1( ai->dev->base_addr+DATA0+whichbap,
		       pu16Src, bytelen>>1 );
	else
		FUNC0( ai->dev->base_addr+DATA0+whichbap, pu16Src, bytelen );
	return SUCCESS;
}