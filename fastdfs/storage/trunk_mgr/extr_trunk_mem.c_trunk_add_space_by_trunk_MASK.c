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
typedef  int /*<<< orphan*/  FDFSTrunkFullInfo ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC1(const FDFSTrunkFullInfo *pTrunkInfo)
{
	int result;

	result = FUNC0(pTrunkInfo, false);
	if (result == 0 || result == EEXIST)
	{
		return 0;
	}
	else
	{
		return result;
	}
}