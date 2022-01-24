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
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct aic7xxx_host *p)
{
  /*
   * Make sure the SEEPROM is ready before we release it.
   */
  FUNC0(p);
  FUNC1(p, 0, SEECTL);
}