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
struct aic7xxx_host {int flags; int /*<<< orphan*/  unpause; } ;

/* Variables and functions */
 int AHC_HANDLING_REQINITS ; 
 int BRKADRINT ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  INTSTAT ; 
 int SCSIINT ; 
 int SEQINT ; 
 int FUNC0 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct aic7xxx_host *p, int unpause_always)
{
  if (unpause_always ||
      ( !(FUNC0(p, INTSTAT) & (SCSIINT | SEQINT | BRKADRINT)) &&
        !(p->flags & AHC_HANDLING_REQINITS) ) )
  {
    FUNC1(p, p->unpause, HCNTRL);
  }
}