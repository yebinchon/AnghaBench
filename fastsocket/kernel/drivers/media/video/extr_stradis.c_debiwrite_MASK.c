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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct saa7146*) ; 

__attribute__((used)) static int FUNC3(struct saa7146 *saa, u32 config, int addr,
	u32 val, int count)
{
	u32 cmd;
	if (count <= 0 || count > 32764)
		return -1;
	if (FUNC2(saa) < 0)
		return -1;
	FUNC0(config, SAA7146_DEBI_CONFIG);
	if (count <= 4)		/* immediate transfer */
		FUNC0(val, SAA7146_DEBI_AD);
	else			/* block transfer */
		FUNC0(FUNC1(saa->dmadebi), SAA7146_DEBI_AD);
	FUNC0((cmd = (count << 17) | (addr & 0xffff)), SAA7146_DEBI_COMMAND);
	FUNC0((SAA7146_MC2_UPLD_DEBI << 16) | SAA7146_MC2_UPLD_DEBI,
		 SAA7146_MC2);
	return 0;
}