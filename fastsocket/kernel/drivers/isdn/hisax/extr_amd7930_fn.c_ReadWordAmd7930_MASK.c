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
typedef  int WORD ;
typedef  int BYTE ;

/* Variables and functions */
 int FUNC0 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int,int) ; 

__attribute__((used)) static WORD /* macro rWordAMD */
FUNC2(struct IsdnCardState *cs, BYTE reg)
{
        WORD res;
        /* direct access register */
        if(reg < 8) {
        	res = FUNC0(cs, reg);
                res += 256*FUNC0(cs, reg);
        }
        /* indirect access register */
        else {
                FUNC1(cs, 0x00, reg);
	        res = FUNC0(cs, 0x01);
                res += 256*FUNC0(cs, 0x01);
        }
	return (res);
}