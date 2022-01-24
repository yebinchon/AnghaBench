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
struct smscore_registry_entry_t {int mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct smscore_registry_entry_t* FUNC1 (char*) ; 

void FUNC2(char *devpath, int mode)
{
	struct smscore_registry_entry_t *entry;

	entry = FUNC1(devpath);
	if (entry)
		entry->mode = mode;
	else
		FUNC0("No registry found.");
}