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
 int /*<<< orphan*/  FASTMODE ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  SEQCTL ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct aic7xxx_host *p)
{
  FUNC0(p, 0, SEQADDR0);
  FUNC0(p, 0, SEQADDR1);
  FUNC0(p, FASTMODE, SEQCTL);
}