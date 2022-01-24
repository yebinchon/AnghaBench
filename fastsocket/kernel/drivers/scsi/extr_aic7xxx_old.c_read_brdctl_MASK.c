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
struct aic7xxx_host {int features; int chip; int flags; } ;

/* Variables and functions */
 int AHC_AIC7895 ; 
 int AHC_CHIPID_MASK ; 
 int AHC_CHNLB ; 
 int AHC_ULTRA2 ; 
 unsigned char BRDCS ; 
 int /*<<< orphan*/  BRDCTL ; 
 unsigned char BRDRW ; 
 unsigned char BRDRW_ULTRA2 ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*) ; 
 unsigned char FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char
FUNC3(struct aic7xxx_host *p)
{
  unsigned char brdctl, value;

  /*
   * Make sure the SEEPROM is ready before we access it
   */
  FUNC0(p);
  if (p->features & AHC_ULTRA2)
  {
    brdctl = BRDRW_ULTRA2;
    FUNC2(p, brdctl, BRDCTL);
    FUNC0(p);
    value = FUNC1(p, BRDCTL);
    FUNC0(p);
    return(value);
  }
  brdctl = BRDRW;
  if ( !((p->chip & AHC_CHIPID_MASK) == AHC_AIC7895) ||
        (p->flags & AHC_CHNLB) )
  {
    brdctl |= BRDCS;
  }
  FUNC2(p, brdctl, BRDCTL);
  FUNC0(p);
  value = FUNC1(p, BRDCTL);
  FUNC0(p);
  FUNC2(p, 0, BRDCTL);
  FUNC0(p);
  return (value);
}