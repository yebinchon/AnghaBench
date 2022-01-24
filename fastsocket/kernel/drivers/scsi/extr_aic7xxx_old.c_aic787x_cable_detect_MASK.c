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
 int /*<<< orphan*/  BRDDAT5 ; 
 unsigned char BRDDAT6 ; 
 unsigned char BRDDAT7 ; 
 unsigned char FUNC0 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct aic7xxx_host *p, int *int_50, int *int_68,
    int *ext_present, int *eeprom)
{
  unsigned char brdctl;

  /*
   * First read the status of our cables.  Set the rom bank to
   * 0 since the bank setting serves as a multiplexor for the
   * cable detection logic.  BRDDAT5 controls the bank switch.
   */
  FUNC1(p, 0);

  /*
   * Now we read the state of the two internal connectors.  BRDDAT6
   * is internal 50, BRDDAT7 is internal 68.  For each, the cable is
   * present if the bit is 0
   */
  brdctl = FUNC0(p);
  *int_50 = !(brdctl & BRDDAT6);
  *int_68 = !(brdctl & BRDDAT7);

  /*
   * Set the bank bit in brdctl and then read the external cable state
   * and the EEPROM status
   */
  FUNC1(p, BRDDAT5);
  brdctl = FUNC0(p);

  *ext_present = !(brdctl & BRDDAT6);
  *eeprom = !(brdctl & BRDDAT7);

  /*
   * We're done, the calling function will release the SEEPROM for us
   */
}