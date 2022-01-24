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
struct aic7xxx_host {int features; } ;

/* Variables and functions */
 int AHC_MORE_SRAM ; 
 int SEQCTL ; 
 int SRAM_BASE ; 
 int TARG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct aic7xxx_host *p)
{
  int i, k;

  k = 0;
  FUNC1("Scratch RAM:\n");
  for(i = SRAM_BASE; i < SEQCTL; i++)
  {
    FUNC1("%02x:%02x ", i, FUNC0(p, i));
    if(++k == 13)
    {
      FUNC1("\n");
      k=0;
    }
  }
  if (p->features & AHC_MORE_SRAM)
  {
    for(i = TARG_OFFSET; i < 0x80; i++)
    {
      FUNC1("%02x:%02x ", i, FUNC0(p, i));
      if(++k == 13)
      {
        FUNC1("\n");
        k=0;
      }
    }
  }
  FUNC1("\n");
}