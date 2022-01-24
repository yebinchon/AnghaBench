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

/* Variables and functions */
 int IM_MAX_HOSTS ; 
 int /*<<< orphan*/  LED_ACTIVITY ; 
 int /*<<< orphan*/  LED_ADISP ; 
 int /*<<< orphan*/  LED_DISP ; 
 int /*<<< orphan*/  display_mode ; 
 int global_adapter_speed ; 
 int ibm_ansi_order ; 
 int* io_port ; 
 scalar_t__ FUNC0 (char) ; 
 int* scsi_id ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static void FUNC4(char *str, int *ints)
{
	int i, j, io_base, id_base;
	char *token;

	io_base = 0;
	id_base = 0;
	if (str) {
		j = 0;
		while ((token = FUNC3(&str, ",")) != NULL) {
			if (!FUNC2(token, "activity"))
				display_mode |= LED_ACTIVITY;
			if (!FUNC2(token, "display"))
				display_mode |= LED_DISP;
			if (!FUNC2(token, "adisplay"))
				display_mode |= LED_ADISP;
			if (!FUNC2(token, "normal"))
				ibm_ansi_order = 0;
			if (!FUNC2(token, "ansi"))
				ibm_ansi_order = 1;
			if (!FUNC2(token, "fast"))
				global_adapter_speed = 0;
			if (!FUNC2(token, "medium"))
				global_adapter_speed = 4;
			if (!FUNC2(token, "slow"))
				global_adapter_speed = 7;
			if ((*token == '-') || (FUNC0(*token))) {
				if (!(j % 2) && (io_base < IM_MAX_HOSTS))
					io_port[io_base++] = FUNC1(token, NULL, 0);
				if ((j % 2) && (id_base < IM_MAX_HOSTS))
					scsi_id[id_base++] = FUNC1(token, NULL, 0);
				j++;
			}
		}
	} else if (ints) {
		for (i = 0; i < IM_MAX_HOSTS && 2 * i + 2 < ints[0]; i++) {
			io_port[i] = ints[2 * i + 2];
			scsi_id[i] = ints[2 * i + 2];
		}
	}
	return;
}