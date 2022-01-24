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
struct key_entry {scalar_t__ type; int keycode; } ;

/* Variables and functions */
 scalar_t__ KE_END ; 
 scalar_t__ KE_KEY ; 
 struct key_entry* eeepc_keymap ; 

__attribute__((used)) static struct key_entry *FUNC0(int code)
{
	struct key_entry *key;

	for (key = eeepc_keymap; key->type != KE_END; key++)
		if (code == key->keycode && key->type == KE_KEY)
			return key;

	return NULL;
}