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
typedef  int /*<<< orphan*/  u_char ;
struct IsdnCardState {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSCX_CMDR ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 

__attribute__((used)) static inline void
FUNC2(struct IsdnCardState *cs, int hscx, u_char data)
{
	FUNC1(cs, hscx);
	FUNC0(cs, hscx, HSCX_CMDR, data);
}