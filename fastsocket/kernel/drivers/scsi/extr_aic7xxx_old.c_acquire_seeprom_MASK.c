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
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  SEECTL ; 
 int /*<<< orphan*/  SEEMS ; 
 int SEERDY ; 
 int FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct aic7xxx_host *p)
{

  /*
   * Request access of the memory port.  When access is
   * granted, SEERDY will go high.  We use a 1 second
   * timeout which should be near 1 second more than
   * is needed.  Reason: after the 7870 chip reset, there
   * should be no contention.
   */
  FUNC2(p, SEEMS, SEECTL);
  FUNC0(p);
  if ((FUNC1(p, SEECTL) & SEERDY) == 0)
  {
    FUNC2(p, 0, SEECTL);
    return (0);
  }
  return (1);
}