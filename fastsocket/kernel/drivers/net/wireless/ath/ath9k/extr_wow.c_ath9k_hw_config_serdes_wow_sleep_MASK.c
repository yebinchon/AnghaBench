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
struct TYPE_2__ {int ia_rows; } ;
struct ath_hw {TYPE_1__ iniPcieSerdesWow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	int i;

	for (i = 0; i < ah->iniPcieSerdesWow.ia_rows; i++)
		FUNC1(ah, FUNC0(&ah->iniPcieSerdesWow, i, 0),
			  FUNC0(&ah->iniPcieSerdesWow, i, 1));

	FUNC2(1000, 1500);
}