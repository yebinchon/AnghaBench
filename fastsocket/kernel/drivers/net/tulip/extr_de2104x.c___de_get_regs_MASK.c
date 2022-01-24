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
typedef  int /*<<< orphan*/  u32 ;
struct de_private {int dummy; } ;

/* Variables and functions */
 int DE_NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct de_private *de, u8 *buf)
{
	int i;
	u32 *rbuf = (u32 *)buf;

	/* read all CSRs */
	for (i = 0; i < DE_NUM_REGS; i++)
		rbuf[i] = FUNC1(i * 8);

	/* handle self-clearing RxMissed counter, CSR8 */
	FUNC0(de, rbuf[8]);
}