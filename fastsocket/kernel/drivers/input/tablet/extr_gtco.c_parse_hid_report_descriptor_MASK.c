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
struct gtco {int max_X; int min_X; int max_Y; int min_Y; int maxtilt_X; int mintilt_X; int maxtilt_Y; int mintilt_Y; int maxpressure; int minpressure; int usage; } ;
typedef  int __u8 ;
typedef  int __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int DIGITIZER_USAGE_TILT_X ; 
 int DIGITIZER_USAGE_TILT_Y ; 
 int DIGITIZER_USAGE_TIP_PRESSURE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  TAG_GLOB_LOG_MAX 147 
#define  TAG_GLOB_LOG_MIN 146 
 int TAG_GLOB_MAX ; 
#define  TAG_GLOB_PHYS_MAX 145 
#define  TAG_GLOB_PHYS_MIN 144 
#define  TAG_GLOB_POP 143 
#define  TAG_GLOB_PUSH 142 
#define  TAG_GLOB_REPORT_CNT 141 
#define  TAG_GLOB_REPORT_ID 140 
#define  TAG_GLOB_REPORT_SZ 139 
#define  TAG_GLOB_UNIT 138 
#define  TAG_GLOB_UNIT_EXP 137 
#define  TAG_GLOB_USAGE 136 
#define  TAG_MAIN_COL_END 135 
#define  TAG_MAIN_COL_START 134 
#define  TAG_MAIN_FEATURE 133 
#define  TAG_MAIN_INPUT 132 
#define  TAG_MAIN_OUTPUT 131 
#define  TYPE_GLOBAL 130 
#define  TYPE_LOCAL 129 
#define  TYPE_MAIN 128 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(struct gtco *device, char * report,
					int length)
{
	int   x, i = 0;

	/* Tag primitive vars */
	__u8   prefix;
	__u8   size;
	__u8   tag;
	__u8   type;
	__u8   data   = 0;
	__u16  data16 = 0;
	__u32  data32 = 0;

	/* For parsing logic */
	int   inputnum = 0;
	__u32 usage = 0;

	/* Global Values, indexed by TAG */
	__u32 globalval[TAG_GLOB_MAX];
	__u32 oldval[TAG_GLOB_MAX];

	/* Debug stuff */
	char  maintype = 'x';
	char  globtype[12];
	int   indent = 0;
	char  indentstr[10] = "";


	FUNC3("======>>>>>>PARSE<<<<<<======");

	/* Walk  this report and pull out the info we need */
	while (i < length) {
		prefix = report[i];

		/* Skip over prefix */
		i++;

		/* Determine data size and save the data in the proper variable */
		size = FUNC0(prefix);
		switch (size) {
		case 1:
			data = report[i];
			break;
		case 2:
			data16 = FUNC4(&report[i]);
			break;
		case 3:
			size = 4;
			data32 = FUNC5(&report[i]);
			break;
		}

		/* Skip size of data */
		i += size;

		/* What we do depends on the tag type */
		tag  = FUNC1(prefix);
		type = FUNC2(prefix);
		switch (type) {
		case TYPE_MAIN:
			FUNC6(globtype, "");
			switch (tag) {

			case TAG_MAIN_INPUT:
				/*
				 * The INPUT MAIN tag signifies this is
				 * information from a report.  We need to
				 * figure out what it is and store the
				 * min/max values
				 */

				maintype = 'I';
				if (data == 2)
					FUNC6(globtype, "Variable");
				else if (data == 3)
					FUNC6(globtype, "Var|Const");

				FUNC3("::::: Saving Report: %d input #%d Max: 0x%X(%d) Min:0x%X(%d) of %d bits",
				    globalval[TAG_GLOB_REPORT_ID], inputnum,
				    globalval[TAG_GLOB_LOG_MAX], globalval[TAG_GLOB_LOG_MAX],
				    globalval[TAG_GLOB_LOG_MIN], globalval[TAG_GLOB_LOG_MIN],
				    globalval[TAG_GLOB_REPORT_SZ] * globalval[TAG_GLOB_REPORT_CNT]);


				/*
				  We can assume that the first two input items
				  are always the X and Y coordinates.  After
				  that, we look for everything else by
				  local usage value
				 */
				switch (inputnum) {
				case 0:  /* X coord */
					FUNC3("GER: X Usage: 0x%x", usage);
					if (device->max_X == 0) {
						device->max_X = globalval[TAG_GLOB_LOG_MAX];
						device->min_X = globalval[TAG_GLOB_LOG_MIN];
					}
					break;

				case 1:  /* Y coord */
					FUNC3("GER: Y Usage: 0x%x", usage);
					if (device->max_Y == 0) {
						device->max_Y = globalval[TAG_GLOB_LOG_MAX];
						device->min_Y = globalval[TAG_GLOB_LOG_MIN];
					}
					break;

				default:
					/* Tilt X */
					if (usage == DIGITIZER_USAGE_TILT_X) {
						if (device->maxtilt_X == 0) {
							device->maxtilt_X = globalval[TAG_GLOB_LOG_MAX];
							device->mintilt_X = globalval[TAG_GLOB_LOG_MIN];
						}
					}

					/* Tilt Y */
					if (usage == DIGITIZER_USAGE_TILT_Y) {
						if (device->maxtilt_Y == 0) {
							device->maxtilt_Y = globalval[TAG_GLOB_LOG_MAX];
							device->mintilt_Y = globalval[TAG_GLOB_LOG_MIN];
						}
					}

					/* Pressure */
					if (usage == DIGITIZER_USAGE_TIP_PRESSURE) {
						if (device->maxpressure == 0) {
							device->maxpressure = globalval[TAG_GLOB_LOG_MAX];
							device->minpressure = globalval[TAG_GLOB_LOG_MIN];
						}
					}

					break;
				}

				inputnum++;
				break;

			case TAG_MAIN_OUTPUT:
				maintype = 'O';
				break;

			case TAG_MAIN_FEATURE:
				maintype = 'F';
				break;

			case TAG_MAIN_COL_START:
				maintype = 'S';

				if (data == 0) {
					FUNC3("======>>>>>> Physical");
					FUNC6(globtype, "Physical");
				} else
					FUNC3("======>>>>>>");

				/* Indent the debug output */
				indent++;
				for (x = 0; x < indent; x++)
					indentstr[x] = '-';
				indentstr[x] = 0;

				/* Save global tags */
				for (x = 0; x < TAG_GLOB_MAX; x++)
					oldval[x] = globalval[x];

				break;

			case TAG_MAIN_COL_END:
				FUNC3("<<<<<<======");
				maintype = 'E';
				indent--;
				for (x = 0; x < indent; x++)
					indentstr[x] = '-';
				indentstr[x] = 0;

				/* Copy global tags back */
				for (x = 0; x < TAG_GLOB_MAX; x++)
					globalval[x] = oldval[x];

				break;
			}

			switch (size) {
			case 1:
				FUNC3("%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x",
				    indentstr, tag, maintype, size, globtype, data);
				break;

			case 2:
				FUNC3("%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x",
				    indentstr, tag, maintype, size, globtype, data16);
				break;

			case 4:
				FUNC3("%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x",
				    indentstr, tag, maintype, size, globtype, data32);
				break;
			}
			break;

		case TYPE_GLOBAL:
			switch (tag) {
			case TAG_GLOB_USAGE:
				/*
				 * First time we hit the global usage tag,
				 * it should tell us the type of device
				 */
				if (device->usage == 0)
					device->usage = data;

				FUNC6(globtype, "USAGE");
				break;

			case TAG_GLOB_LOG_MIN:
				FUNC6(globtype, "LOG_MIN");
				break;

			case TAG_GLOB_LOG_MAX:
				FUNC6(globtype, "LOG_MAX");
				break;

			case TAG_GLOB_PHYS_MIN:
				FUNC6(globtype, "PHYS_MIN");
				break;

			case TAG_GLOB_PHYS_MAX:
				FUNC6(globtype, "PHYS_MAX");
				break;

			case TAG_GLOB_UNIT_EXP:
				FUNC6(globtype, "EXP");
				break;

			case TAG_GLOB_UNIT:
				FUNC6(globtype, "UNIT");
				break;

			case TAG_GLOB_REPORT_SZ:
				FUNC6(globtype, "REPORT_SZ");
				break;

			case TAG_GLOB_REPORT_ID:
				FUNC6(globtype, "REPORT_ID");
				/* New report, restart numbering */
				inputnum = 0;
				break;

			case TAG_GLOB_REPORT_CNT:
				FUNC6(globtype, "REPORT_CNT");
				break;

			case TAG_GLOB_PUSH:
				FUNC6(globtype, "PUSH");
				break;

			case TAG_GLOB_POP:
				FUNC6(globtype, "POP");
				break;
			}

			/* Check to make sure we have a good tag number
			   so we don't overflow array */
			if (tag < TAG_GLOB_MAX) {
				switch (size) {
				case 1:
					FUNC3("%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x",
					    indentstr, globtype, tag, size, data);
					globalval[tag] = data;
					break;

				case 2:
					FUNC3("%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x",
					    indentstr, globtype, tag, size, data16);
					globalval[tag] = data16;
					break;

				case 4:
					FUNC3("%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x",
					    indentstr, globtype, tag, size, data32);
					globalval[tag] = data32;
					break;
				}
			} else {
				FUNC3("%sGLOBALTAG: ILLEGAL TAG:%d SIZE: %d ",
				    indentstr, tag, size);
			}
			break;

		case TYPE_LOCAL:
			switch (tag) {
			case TAG_GLOB_USAGE:
				FUNC6(globtype, "USAGE");
				/* Always 1 byte */
				usage = data;
				break;

			case TAG_GLOB_LOG_MIN:
				FUNC6(globtype, "MIN");
				break;

			case TAG_GLOB_LOG_MAX:
				FUNC6(globtype, "MAX");
				break;

			default:
				FUNC6(globtype, "UNKNOWN");
				break;
			}

			switch (size) {
			case 1:
				FUNC3("%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x",
				    indentstr, tag, globtype, size, data);
				break;

			case 2:
				FUNC3("%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x",
				    indentstr, tag, globtype, size, data16);
				break;

			case 4:
				FUNC3("%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x",
				    indentstr, tag, globtype, size, data32);
				break;
			}

			break;
		}
	}
}