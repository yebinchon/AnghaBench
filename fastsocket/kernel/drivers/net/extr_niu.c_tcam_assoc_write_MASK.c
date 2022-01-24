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
typedef  int u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCAM_CTL ; 
 int TCAM_CTL_RWC_RAM_WRITE ; 
 int /*<<< orphan*/  TCAM_CTL_STAT ; 
 int /*<<< orphan*/  TCAM_KEY_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct niu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct niu *np, int index, u64 assoc_data)
{
	FUNC0(TCAM_KEY_1, assoc_data);
	FUNC0(TCAM_CTL, (TCAM_CTL_RWC_RAM_WRITE | index));

	return FUNC1(np, TCAM_CTL_STAT);
}