#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int v4l2_std_id ;
struct pvr2_hdw {int std_mask_eeprom; int std_mask_avail; int std_mask_cur; int std_dirty; int std_enum_cnt; int std_enum_cur; TYPE_2__* std_defs; TYPE_1__* hdw_desc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int msk; int pat; int std; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int default_std_mask; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  PVR2_TRACE_STD ; 
 int FUNC1 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*) ; 
 unsigned int FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* std_eeprom_maps ; 

__attribute__((used)) static void FUNC6(struct pvr2_hdw *hdw)
{
	char buf[40];
	unsigned int bcnt;
	v4l2_std_id std1,std2,std3;

	std1 = FUNC1(hdw);
	std3 = std1 ? 0 : hdw->hdw_desc->default_std_mask;

	bcnt = FUNC4(buf,sizeof(buf),hdw->std_mask_eeprom);
	FUNC5(PVR2_TRACE_STD,
		   "Supported video standard(s) reported available"
		   " in hardware: %.*s",
		   bcnt,buf);

	hdw->std_mask_avail = hdw->std_mask_eeprom;

	std2 = (std1|std3) & ~hdw->std_mask_avail;
	if (std2) {
		bcnt = FUNC4(buf,sizeof(buf),std2);
		FUNC5(PVR2_TRACE_STD,
			   "Expanding supported video standards"
			   " to include: %.*s",
			   bcnt,buf);
		hdw->std_mask_avail |= std2;
	}

	FUNC3(hdw);

	if (std1) {
		bcnt = FUNC4(buf,sizeof(buf),std1);
		FUNC5(PVR2_TRACE_STD,
			   "Initial video standard forced to %.*s",
			   bcnt,buf);
		hdw->std_mask_cur = std1;
		hdw->std_dirty = !0;
		FUNC2(hdw);
		return;
	}
	if (std3) {
		bcnt = FUNC4(buf,sizeof(buf),std3);
		FUNC5(PVR2_TRACE_STD,
			   "Initial video standard"
			   " (determined by device type): %.*s",bcnt,buf);
		hdw->std_mask_cur = std3;
		hdw->std_dirty = !0;
		FUNC2(hdw);
		return;
	}

	{
		unsigned int idx;
		for (idx = 0; idx < FUNC0(std_eeprom_maps); idx++) {
			if (std_eeprom_maps[idx].msk ?
			    ((std_eeprom_maps[idx].pat ^
			     hdw->std_mask_eeprom) &
			     std_eeprom_maps[idx].msk) :
			    (std_eeprom_maps[idx].pat !=
			     hdw->std_mask_eeprom)) continue;
			bcnt = FUNC4(buf,sizeof(buf),
						  std_eeprom_maps[idx].std);
			FUNC5(PVR2_TRACE_STD,
				   "Initial video standard guessed as %.*s",
				   bcnt,buf);
			hdw->std_mask_cur = std_eeprom_maps[idx].std;
			hdw->std_dirty = !0;
			FUNC2(hdw);
			return;
		}
	}

	if (hdw->std_enum_cnt > 1) {
		// Autoselect the first listed standard
		hdw->std_enum_cur = 1;
		hdw->std_mask_cur = hdw->std_defs[hdw->std_enum_cur-1].id;
		hdw->std_dirty = !0;
		FUNC5(PVR2_TRACE_STD,
			   "Initial video standard auto-selected to %s",
			   hdw->std_defs[hdw->std_enum_cur-1].name);
		return;
	}

	FUNC5(PVR2_TRACE_ERROR_LEGS,
		   "Unable to select a viable initial video standard");
}