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
typedef  int u16 ;
struct airo_info {TYPE_1__* dev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {scalar_t__ base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_MPI ; 
 int /*<<< orphan*/  do8bitIO ; 
 unsigned short FUNC0 (scalar_t__) ; 
 unsigned short FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC3( struct airo_info *ai, u16 reg ) {
	unsigned short rc;

	if (FUNC2(FLAG_MPI,&ai->flags))
		reg <<= 1;
	if ( !do8bitIO )
		rc = FUNC1( ai->dev->base_addr + reg );
	else {
		rc = FUNC0( ai->dev->base_addr + reg );
		rc += ((int)FUNC0( ai->dev->base_addr + reg + 1 )) << 8;
	}
	return rc;
}