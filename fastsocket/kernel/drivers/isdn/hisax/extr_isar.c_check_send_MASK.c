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
typedef  int u_char ;
struct IsdnCardState {int dummy; } ;
struct BCState {scalar_t__ mode; } ;

/* Variables and functions */
 int BSTAT_RDM1 ; 
 int BSTAT_RDM2 ; 
 struct BCState* FUNC0 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct BCState*) ; 

__attribute__((used)) static inline void
FUNC2(struct IsdnCardState *cs, u_char rdm)
{
	struct BCState *bcs;
	
	if (rdm & BSTAT_RDM1) {
		if ((bcs = FUNC0(cs, 1))) {
			if (bcs->mode) {
				FUNC1(bcs);
			}
		}
	}
	if (rdm & BSTAT_RDM2) {
		if ((bcs = FUNC0(cs, 2))) {
			if (bcs->mode) {
				FUNC1(bcs);
			}
		}
	}
	
}