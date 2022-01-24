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
 int BRDCS ; 
 int /*<<< orphan*/  BRDCTL ; 
 unsigned char BRDDAT5 ; 
 unsigned char BRDDAT6 ; 
 int BRDRW ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*) ; 
 int EEPROM ; 
 int /*<<< orphan*/  SPIOCAP ; 
 int FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct aic7xxx_host *p, int *int_50,
    int *ext_present, int *eeprom)
{
  unsigned char brdctl;

  FUNC2(p, BRDRW | BRDCS, BRDCTL);
  FUNC0(p);
  FUNC2(p, 0, BRDCTL);
  FUNC0(p);
  brdctl = FUNC1(p, BRDCTL);
  FUNC0(p);
  *int_50 = !(brdctl & BRDDAT5);
  *ext_present = !(brdctl & BRDDAT6);
  *eeprom = (FUNC1(p, SPIOCAP) & EEPROM);
}