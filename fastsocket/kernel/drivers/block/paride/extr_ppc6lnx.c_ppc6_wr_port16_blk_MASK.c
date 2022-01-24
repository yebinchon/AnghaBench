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
typedef  int u8 ;
typedef  int /*<<< orphan*/  Interface ;

/* Variables and functions */
 int ACCESS_PORT ; 
 int ACCESS_REG ; 
 int ACCESS_WRITE ; 
 int CMD_PREFIX_RESET ; 
 int CMD_PREFIX_SET ; 
 int PREFIX_BLK ; 
 int PREFIX_IO16 ; 
 int REG_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(Interface *ppc, u8 port, u8 *data, long length)
{
	length = length << 1;

	FUNC0(ppc, (REG_BLKSIZE | ACCESS_REG | ACCESS_WRITE));
	FUNC2(ppc,(u8)length);
	FUNC2(ppc,(u8)(length >> 8));
	FUNC2(ppc,0);

	FUNC0(ppc, (CMD_PREFIX_SET | PREFIX_IO16 | PREFIX_BLK));

	FUNC0(ppc, (u8)(port | ACCESS_PORT | ACCESS_WRITE));

	FUNC1(ppc, data, length);

	FUNC0(ppc, (CMD_PREFIX_RESET | PREFIX_IO16 | PREFIX_BLK));
}