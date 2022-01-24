#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
struct info_str {char* buffer; int length; scalar_t__ offset; scalar_t__ pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  numscbs; } ;
struct ahd_softc {int features; int /*<<< orphan*/  our_id; int /*<<< orphan*/ * seep_config; TYPE_1__ scb_data; int /*<<< orphan*/  description; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_NSEG ; 
 int AHD_WIDE ; 
 int /*<<< orphan*/  AIC79XX_DRIVER_VERSION ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct info_str*,int /*<<< orphan*/ ,char,int) ; 
 int FUNC2 (struct ahd_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct info_str*,char*,...) ; 

int
FUNC4(struct Scsi_Host *shost, char *buffer, char **start,
		    off_t offset, int length, int inout)
{
	struct	ahd_softc *ahd = *(struct ahd_softc **)shost->hostdata;
	struct	info_str info;
	char	ahd_info[256];
	u_int	max_targ;
	u_int	i;
	int	retval;

	 /* Has data been written to the file? */ 
	if (inout == TRUE) {
		retval = FUNC2(ahd, buffer, length);
		goto done;
	}

	if (start)
		*start = buffer;

	info.buffer	= buffer;
	info.length	= length;
	info.offset	= offset;
	info.pos	= 0;

	FUNC3(&info, "Adaptec AIC79xx driver version: %s\n",
		  AIC79XX_DRIVER_VERSION);
	FUNC3(&info, "%s\n", ahd->description);
	FUNC0(ahd, ahd_info);
	FUNC3(&info, "%s\n", ahd_info);
	FUNC3(&info, "Allocated SCBs: %d, SG List Length: %d\n\n",
		  ahd->scb_data.numscbs, AHD_NSEG);

	max_targ = 16;

	if (ahd->seep_config == NULL)
		FUNC3(&info, "No Serial EEPROM\n");
	else {
		FUNC3(&info, "Serial EEPROM:\n");
		for (i = 0; i < sizeof(*ahd->seep_config)/2; i++) {
			if (((i % 8) == 0) && (i != 0)) {
				FUNC3(&info, "\n");
			}
			FUNC3(&info, "0x%.4x ",
				  ((uint16_t*)ahd->seep_config)[i]);
		}
		FUNC3(&info, "\n");
	}
	FUNC3(&info, "\n");

	if ((ahd->features & AHD_WIDE) == 0)
		max_targ = 8;

	for (i = 0; i < max_targ; i++) {

		FUNC1(ahd, &info, ahd->our_id, 'A',
				      /*target_id*/i);
	}
	retval = info.pos > info.offset ? info.pos - info.offset : 0;
done:
	return (retval);
}