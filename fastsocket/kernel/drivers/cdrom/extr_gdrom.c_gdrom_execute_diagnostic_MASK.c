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
struct TYPE_2__ {int /*<<< orphan*/  cd_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDROM_COM_EXECDIAG ; 
 int /*<<< orphan*/  GDROM_ERROR_REG ; 
 int /*<<< orphan*/  GDROM_STATUSCOMMAND_REG ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ gd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static char FUNC5(void)
{
	FUNC2(gd.cd_info);
	if (!FUNC4())
		return 0;
	FUNC1(GDROM_COM_EXECDIAG, GDROM_STATUSCOMMAND_REG);
	if (!FUNC3())
		return 0;
	return FUNC0(GDROM_ERROR_REG);
}