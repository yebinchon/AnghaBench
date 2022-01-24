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
struct individual_sensor {int token; } ;
typedef  int /*<<< orphan*/  power_source ;
typedef  int /*<<< orphan*/  lid_status ;
typedef  int /*<<< orphan*/  key_switch ;
typedef  int /*<<< orphan*/  ibm_drconnector ;
typedef  int /*<<< orphan*/  epow_sensor ;
typedef  int /*<<< orphan*/  enclosure_switch ;
typedef  int /*<<< orphan*/  battery_remaining ;
typedef  int /*<<< orphan*/  battery_cyclestate ;
typedef  int /*<<< orphan*/  battery_charging ;

/* Variables and functions */
#define  BATTERY_CHARGING 143 
#define  BATTERY_CYCLESTATE 142 
#define  BATTERY_PERCENTAGE 141 
#define  BATTERY_REMAINING 140 
#define  BATTERY_VOLTAGE 139 
#define  ENCLOSURE_SWITCH 138 
#define  EPOW_SENSOR 137 
#define  IBM_DRCONNECTOR 136 
#define  IBM_FANRPM 135 
#define  IBM_POWERSUPPLY 134 
#define  IBM_SURVEILLANCE 133 
#define  IBM_VOLTAGE 132 
#define  KEY_SWITCH 131 
#define  LID_STATUS 130 
#define  POWER_SOURCE 129 
#define  THERMAL_SENSOR 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct individual_sensor*,char const*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m,
	struct individual_sensor *s, int state, int error, const char *loc)
{
	/* Defined return vales */
	const char * key_switch[]        = { "Off\t", "Normal\t", "Secure\t", 
						"Maintenance" };
	const char * enclosure_switch[]  = { "Closed", "Open" };
	const char * lid_status[]        = { " ", "Open", "Closed" };
	const char * power_source[]      = { "AC\t", "Battery", 
		  				"AC & Battery" };
	const char * battery_remaining[] = { "Very Low", "Low", "Mid", "High" };
	const char * epow_sensor[]       = { 
		"EPOW Reset", "Cooling warning", "Power warning",
		"System shutdown", "System halt", "EPOW main enclosure",
		"EPOW power off" };
	const char * battery_cyclestate[]  = { "None", "In progress", 
						"Requested" };
	const char * battery_charging[]    = { "Charging", "Discharching", 
						"No current flow" };
	const char * ibm_drconnector[]     = { "Empty", "Present", "Unusable", 
						"Exchange" };

	int have_strings = 0;
	int num_states = 0;
	int temperature = 0;
	int unknown = 0;

	/* What kind of sensor do we have here? */
	
	switch (s->token) {
		case KEY_SWITCH:
			FUNC3(m, "Key switch:\t");
			num_states = sizeof(key_switch) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", key_switch[state]);
				have_strings = 1;
			}
			break;
		case ENCLOSURE_SWITCH:
			FUNC3(m, "Enclosure switch:\t");
			num_states = sizeof(enclosure_switch) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", 
						enclosure_switch[state]);
				have_strings = 1;
			}
			break;
		case THERMAL_SENSOR:
			FUNC3(m, "Temp. (C/F):\t");
			temperature = 1;
			break;
		case LID_STATUS:
			FUNC3(m, "Lid status:\t");
			num_states = sizeof(lid_status) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", lid_status[state]);
				have_strings = 1;
			}
			break;
		case POWER_SOURCE:
			FUNC3(m, "Power source:\t");
			num_states = sizeof(power_source) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", 
						power_source[state]);
				have_strings = 1;
			}
			break;
		case BATTERY_VOLTAGE:
			FUNC3(m, "Battery voltage:\t");
			break;
		case BATTERY_REMAINING:
			FUNC3(m, "Battery remaining:\t");
			num_states = sizeof(battery_remaining) / sizeof(char *);
			if (state < num_states)
			{
				FUNC3(m, "%s\t", 
						battery_remaining[state]);
				have_strings = 1;
			}
			break;
		case BATTERY_PERCENTAGE:
			FUNC3(m, "Battery percentage:\t");
			break;
		case EPOW_SENSOR:
			FUNC3(m, "EPOW Sensor:\t");
			num_states = sizeof(epow_sensor) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", epow_sensor[state]);
				have_strings = 1;
			}
			break;
		case BATTERY_CYCLESTATE:
			FUNC3(m, "Battery cyclestate:\t");
			num_states = sizeof(battery_cyclestate) / 
				     	sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", 
						battery_cyclestate[state]);
				have_strings = 1;
			}
			break;
		case BATTERY_CHARGING:
			FUNC3(m, "Battery Charging:\t");
			num_states = sizeof(battery_charging) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", 
						battery_charging[state]);
				have_strings = 1;
			}
			break;
		case IBM_SURVEILLANCE:
			FUNC3(m, "Surveillance:\t");
			break;
		case IBM_FANRPM:
			FUNC3(m, "Fan (rpm):\t");
			break;
		case IBM_VOLTAGE:
			FUNC3(m, "Voltage (mv):\t");
			break;
		case IBM_DRCONNECTOR:
			FUNC3(m, "DR connector:\t");
			num_states = sizeof(ibm_drconnector) / sizeof(char *);
			if (state < num_states) {
				FUNC3(m, "%s\t", 
						ibm_drconnector[state]);
				have_strings = 1;
			}
			break;
		case IBM_POWERSUPPLY:
			FUNC3(m, "Powersupply:\t");
			break;
		default:
			FUNC3(m,  "Unknown sensor (type %d), ignoring it\n",
					s->token);
			unknown = 1;
			have_strings = 1;
			break;
	}
	if (have_strings == 0) {
		if (temperature) {
			FUNC3(m, "%4d /%4d\t", state, FUNC0(state));
		} else
			FUNC3(m, "%10d\t", state);
	}
	if (unknown == 0) {
		FUNC3(m, "%s\t", FUNC2(error));
		FUNC1(m, s, loc);
	}
}