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
typedef  int u32 ;
struct saa7146 {int /*<<< orphan*/  dmadebi; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7146_DEBI_AD ; 
 int /*<<< orphan*/  SAA7146_DEBI_COMMAND ; 
 int /*<<< orphan*/  SAA7146_DEBI_CONFIG ; 
 int /*<<< orphan*/  SAA7146_MC2 ; 
 int SAA7146_MC2_UPLD_DEBI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct saa7146*) ; 

__attribute__((used)) static u32 FUNC4(struct saa7146 *saa, u32 config, int addr, int count)
{
	u32 result = 0;

	if (count > 32764 || count <= 0)
		return 0;
	if (FUNC3(saa) < 0)
		return 0;
	FUNC1(FUNC2(saa->dmadebi), SAA7146_DEBI_AD);
	FUNC1((count << 17) | 0x10000 | (addr & 0xffff),
		 SAA7146_DEBI_COMMAND);
	FUNC1(config, SAA7146_DEBI_CONFIG);
	FUNC1((SAA7146_MC2_UPLD_DEBI << 16) | SAA7146_MC2_UPLD_DEBI,
		 SAA7146_MC2);
	if (count > 4)		/* not an immediate transfer */
		return count;
	FUNC3(saa);
	result = FUNC0(SAA7146_DEBI_AD);
	if (count == 1)
		result &= 0xff;
	if (count == 2)
		result &= 0xffff;
	if (count == 3)
		result &= 0xffffff;
	return result;
}