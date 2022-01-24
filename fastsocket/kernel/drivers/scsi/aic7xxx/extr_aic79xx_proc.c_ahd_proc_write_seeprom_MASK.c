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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int u_int ;
struct seeprom_config {int dummy; } ;
struct ahd_softc {char channel; int /*<<< orphan*/ * seep_config; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC0 (struct ahd_softc*) ; 
 int FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 
 int FUNC11 (struct seeprom_config*) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct ahd_softc *ahd, char *buffer, int length)
{
	ahd_mode_state saved_modes;
	int have_seeprom;
	u_long s;
	int paused;
	int written;

	/* Default to failure. */
	written = -EINVAL;
	FUNC2(ahd, &s);
	paused = FUNC1(ahd);
	if (!paused)
		FUNC3(ahd);

	saved_modes = FUNC7(ahd);
	FUNC8(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	if (length != sizeof(struct seeprom_config)) {
		FUNC14("ahd_proc_write_seeprom: incorrect buffer size\n");
		goto done;
	}

	have_seeprom = FUNC11((struct seeprom_config*)buffer);
	if (have_seeprom == 0) {
		FUNC14("ahd_proc_write_seeprom: cksum verification failed\n");
		goto done;
	}

	have_seeprom = FUNC0(ahd);
	if (!have_seeprom) {
		FUNC14("ahd_proc_write_seeprom: No Serial EEPROM\n");
		goto done;
	} else {
		u_int start_addr;

		if (ahd->seep_config == NULL) {
			ahd->seep_config = FUNC13(sizeof(*ahd->seep_config),
						  M_DEVBUF, M_NOWAIT);
			if (ahd->seep_config == NULL) {
				FUNC14("aic79xx: Unable to allocate serial "
				       "eeprom buffer.  Write failing\n");
				goto done;
			}
		}
		FUNC14("aic79xx: Writing Serial EEPROM\n");
		start_addr = 32 * (ahd->channel - 'A');
		FUNC12(ahd, (u_int16_t *)buffer, start_addr,
				  sizeof(struct seeprom_config)/2);
		FUNC4(ahd, (uint16_t *)ahd->seep_config,
				 start_addr, sizeof(struct seeprom_config)/2,
				 /*ByteStream*/FALSE);
		FUNC5(ahd);
		written = length;
	}

done:
	FUNC6(ahd, saved_modes);
	if (!paused)
		FUNC10(ahd);
	FUNC9(ahd, &s);
	return (written);
}