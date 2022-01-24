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
 int FAILDIS ; 
 int FASTMODE ; 
 int LOADRAM ; 
 int PERRORDIS ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  SEQCTL ; 
 int /*<<< orphan*/  SEQRAM ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct aic7xxx_host *p, int downloaded)
{
  int i, k, temp;
  
  FUNC1(p, PERRORDIS|LOADRAM|FAILDIS|FASTMODE, SEQCTL);
  FUNC1(p, 0, SEQADDR0);
  FUNC1(p, 0, SEQADDR1);

  k = 0;
  for (i=0; i < downloaded; i++)
  {
    if ( k == 0 )
      FUNC4("%03x: ", i);
    temp = FUNC0(p, SEQRAM);
    temp |= (FUNC0(p, SEQRAM) << 8);
    temp |= (FUNC0(p, SEQRAM) << 16);
    temp |= (FUNC0(p, SEQRAM) << 24);
    FUNC4("%08x", temp);
    if ( ++k == 8 )
    {
      FUNC4("\n");
      k = 0;
    }
    else
      FUNC4(" ");
  }
  FUNC1(p, 0, SEQADDR0);
  FUNC1(p, 0, SEQADDR1);
  FUNC1(p, FASTMODE | FAILDIS, SEQCTL);
  FUNC5(p, TRUE);
  FUNC2(1);
  FUNC3(p);
  FUNC1(p, FASTMODE, SEQCTL);
  FUNC4("\n");
}