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
 int /*<<< orphan*/  DISCONNECTED_SCBH ; 
 int /*<<< orphan*/  SCBPTR ; 
 unsigned char SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*) ; 
 unsigned char FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char
FUNC3(struct aic7xxx_host *p, unsigned char scbptr,
                               unsigned char prev)
{
  unsigned char next;

  FUNC2(p, scbptr, SCBPTR);
  next = FUNC1(p, SCB_NEXT);
  FUNC0(p);

  if (prev != SCB_LIST_NULL)
  {
    FUNC2(p, prev, SCBPTR);
    FUNC2(p, next, SCB_NEXT);
  }
  else
  {
    FUNC2(p, next, DISCONNECTED_SCBH);
  }

  return next;
}