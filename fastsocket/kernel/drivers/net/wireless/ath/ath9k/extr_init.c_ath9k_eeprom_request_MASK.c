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
struct ath_softc {int /*<<< orphan*/  dev; struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  eeprom_blob; } ;
struct ath9k_eeprom_ctx {int /*<<< orphan*/  complete; struct ath_hw* ah; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct ath_hw* ah ; 
 int /*<<< orphan*/  ath9k_eeprom_request_cb ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath9k_eeprom_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ath_softc *sc, const char *name)
{
	struct ath9k_eeprom_ctx ec;
	struct ath_hw *ah = ah = sc->sc_ah;
	int err;

	/* try to load the EEPROM content asynchronously */
	FUNC2(&ec.complete);
	ec.ah = sc->sc_ah;

	err = FUNC3(THIS_MODULE, 1, name, sc->dev, GFP_KERNEL,
				      &ec, ath9k_eeprom_request_cb);
	if (err < 0) {
		FUNC1(FUNC0(ah),
			"EEPROM request failed\n");
		return err;
	}

	FUNC4(&ec.complete);

	if (!ah->eeprom_blob) {
		FUNC1(FUNC0(ah),
			"Unable to load EEPROM file %s\n", name);
		return -EINVAL;
	}

	return 0;
}