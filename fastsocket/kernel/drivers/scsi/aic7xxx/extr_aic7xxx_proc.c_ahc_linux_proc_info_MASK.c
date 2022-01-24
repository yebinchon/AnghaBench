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
struct ahc_softc {int features; int our_id; int our_id_b; int /*<<< orphan*/ * seep_config; TYPE_1__* scb_data; int /*<<< orphan*/  description; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {int /*<<< orphan*/  numscbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_NSEG ; 
 int AHC_TWIN ; 
 int AHC_WIDE ; 
 int /*<<< orphan*/  AIC7XXX_DRIVER_VERSION ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct info_str*,int,char,int,int) ; 
 int FUNC2 (struct ahc_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct info_str*,char*,...) ; 

int
FUNC4(struct Scsi_Host *shost, char *buffer, char **start,
		    off_t offset, int length, int inout)
{
	struct	ahc_softc *ahc = *(struct ahc_softc **)shost->hostdata;
	struct	info_str info;
	char	ahc_info[256];
	u_int	max_targ;
	u_int	i;
	int	retval;

	 /* Has data been written to the file? */ 
	if (inout == TRUE) {
		retval = FUNC2(ahc, buffer, length);
		goto done;
	}

	if (start)
		*start = buffer;

	info.buffer	= buffer;
	info.length	= length;
	info.offset	= offset;
	info.pos	= 0;

	FUNC3(&info, "Adaptec AIC7xxx driver version: %s\n",
		  AIC7XXX_DRIVER_VERSION);
	FUNC3(&info, "%s\n", ahc->description);
	FUNC0(ahc, ahc_info);
	FUNC3(&info, "%s\n", ahc_info);
	FUNC3(&info, "Allocated SCBs: %d, SG List Length: %d\n\n",
		  ahc->scb_data->numscbs, AHC_NSEG);


	if (ahc->seep_config == NULL)
		FUNC3(&info, "No Serial EEPROM\n");
	else {
		FUNC3(&info, "Serial EEPROM:\n");
		for (i = 0; i < sizeof(*ahc->seep_config)/2; i++) {
			if (((i % 8) == 0) && (i != 0)) {
				FUNC3(&info, "\n");
			}
			FUNC3(&info, "0x%.4x ",
				  ((uint16_t*)ahc->seep_config)[i]);
		}
		FUNC3(&info, "\n");
	}
	FUNC3(&info, "\n");

	max_targ = 16;
	if ((ahc->features & (AHC_WIDE|AHC_TWIN)) == 0)
		max_targ = 8;

	for (i = 0; i < max_targ; i++) {
		u_int our_id;
		u_int target_id;
		char channel;

		channel = 'A';
		our_id = ahc->our_id;
		target_id = i;
		if (i > 7 && (ahc->features & AHC_TWIN) != 0) {
			channel = 'B';
			our_id = ahc->our_id_b;
			target_id = i % 8;
		}

		FUNC1(ahc, &info, our_id,
				      channel, target_id, i);
	}
	retval = info.pos > info.offset ? info.pos - info.offset : 0;
done:
	return (retval);
}