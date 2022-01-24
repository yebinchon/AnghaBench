#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cardtype; } ;
struct TYPE_7__ {TYPE_1__ ictl; } ;
typedef  TYPE_2__ lmc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  LMC_CTL_CARDTYPE_LMC5245 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2 (lmc_softc_t * const sc)
{
  int i;

  sc->ictl.cardtype = LMC_CTL_CARDTYPE_LMC5245;

  /* writes zeros everywhere */
  for (i = 0; i < 21; i++)
    {
      FUNC1 (sc, 0, 17, i);
      FUNC1 (sc, 0, 18, 0);
    }

  /* set some essential bits */
  FUNC1 (sc, 0, 17, 1);
  FUNC1 (sc, 0, 18, 0x25);	/* ser, xtx */

  FUNC1 (sc, 0, 17, 5);
  FUNC1 (sc, 0, 18, 0x80);	/* emode */

  FUNC1 (sc, 0, 17, 14);
  FUNC1 (sc, 0, 18, 0x30);	/* rcgen, tcgen */

  /* clear counters and latched bits */
  for (i = 0; i < 21; i++)
    {
      FUNC1 (sc, 0, 17, i);
      FUNC0 (sc, 0, 18);
    }
}