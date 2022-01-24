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
typedef  int /*<<< orphan*/  u32 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*) ; 

__attribute__((used)) static void FUNC6(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC0(ah);

	u32 rfilt, mfilt[2];

	/* configure rx filter */
	rfilt = FUNC4(sc);
	FUNC3(ah, rfilt);

	/* configure bssid mask */
	FUNC5(common);

	/* configure operational mode */
	FUNC2(ah);

	/* calculate and install multicast filter */
	mfilt[0] = mfilt[1] = ~0;
	FUNC1(ah, mfilt[0], mfilt[1]);
}