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
struct vc_data {int dummy; } ;

/* Variables and functions */
 unsigned int BRL_UC_ROW ; 
 unsigned long brl_nbchords ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,unsigned int,char) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,unsigned int,char) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, unsigned int pattern, char up_flag)
{
	static unsigned long chords;
	static unsigned committed;

	if (!brl_nbchords)
		FUNC0(vc, BRL_UC_ROW | pattern, up_flag);
	else {
		committed |= pattern;
		chords++;
		if (chords == brl_nbchords) {
			FUNC1(vc, BRL_UC_ROW | committed, up_flag);
			chords = 0;
			committed = 0;
		}
	}
}