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
struct dc390_srb {int dummy; } ;
struct dc390_acb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_DIRECTION ; 
 int /*<<< orphan*/  FUNC0 (struct dc390_acb*,struct dc390_srb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1( struct dc390_acb* pACB, struct dc390_srb* pSRB, u8 *psstatus)
{
    FUNC0 (pACB, pSRB, READ_DIRECTION);
}