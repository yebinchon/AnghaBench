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
struct IsdnCardState {int dummy; } ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void /* macro wWordAMD */
FUNC3(struct IsdnCardState *cs, BYTE reg, WORD val)
{
        FUNC2(cs, 0x00, reg);
        FUNC2(cs, 0x01, FUNC1(val));
        FUNC2(cs, 0x01, FUNC0(val));
}