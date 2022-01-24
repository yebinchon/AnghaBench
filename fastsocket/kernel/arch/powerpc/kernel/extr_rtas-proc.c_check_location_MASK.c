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
struct seq_file {int dummy; } ;

/* Variables and functions */
#define  LOC_CPU 133 
#define  LOC_FAN 132 
#define  LOC_LCD 131 
#define  LOC_PLANAR 130 
#define  LOC_RACKMOUNTED 129 
#define  LOC_VOLTAGE 128 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *m, const char *c)
{
	switch (c[0]) {
		case LOC_PLANAR:
			FUNC0(m, "Planar #%c", c[1]);
			break;
		case LOC_CPU:
			FUNC0(m, "CPU #%c", c[1]);
			break;
		case LOC_FAN:
			FUNC0(m, "Fan #%c", c[1]);
			break;
		case LOC_RACKMOUNTED:
			FUNC0(m, "Rack #%c", c[1]);
			break;
		case LOC_VOLTAGE:
			FUNC0(m, "Voltage #%c", c[1]);
			break;
		case LOC_LCD:
			FUNC0(m, "LCD #%c", c[1]);
			break;
		case '.':
			FUNC0(m, "- %c", c[1]);
			break;
		default:
			FUNC0(m, "Unknown location");
			break;
	}
}