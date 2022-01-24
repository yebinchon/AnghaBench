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
struct aic7xxx_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_SCBH ; 
 int /*<<< orphan*/  SCBPTR ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct aic7xxx_host *p)
{
  /*
   * Invalidate the tag so that aic7xxx_find_scb doesn't think
   * it's active
   */
  FUNC1(p, SCB_LIST_NULL, SCB_TAG);
  FUNC1(p, 0, SCB_CONTROL);

  FUNC1(p, FUNC0(p, FREE_SCBH), SCB_NEXT);
  FUNC1(p, FUNC0(p, SCBPTR), FREE_SCBH);
}