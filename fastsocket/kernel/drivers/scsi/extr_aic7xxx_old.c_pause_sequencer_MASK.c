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
struct aic7xxx_host {int features; int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 int AHC_ULTRA2 ; 
 int /*<<< orphan*/  CCSCBCTL ; 
 int /*<<< orphan*/  HCNTRL ; 
 int PAUSE ; 
 int FUNC0 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct aic7xxx_host *p)
{
  FUNC1(p, p->pause, HCNTRL);
  while ((FUNC0(p, HCNTRL) & PAUSE) == 0)
  {
    ;
  }
  if(p->features & AHC_ULTRA2)
  {
    FUNC0(p, CCSCBCTL);
  }
}