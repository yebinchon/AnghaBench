#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atkbd {int set; int /*<<< orphan*/  force_release_mask; void** keycode; scalar_t__ scroll; scalar_t__ translated; } ;
struct TYPE_3__ {unsigned int set2; void* keycode; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ATKBD_KEYMAP_SIZE ; 
 int /*<<< orphan*/  ATKBD_RET_HANGEUL ; 
 int /*<<< orphan*/  ATKBD_RET_HANJA ; 
 void* KEY_HANGEUL ; 
 void* KEY_HANJA ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct atkbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atkbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atkbd_platform_fixup_data ; 
 TYPE_1__* atkbd_scroll_keys ; 
 void** atkbd_set2_keycode ; 
 void** atkbd_set3_keycode ; 
 unsigned int* atkbd_unxlate_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct atkbd *atkbd)
{
	unsigned int scancode;
	int i, j;

	FUNC6(atkbd->keycode, 0, sizeof(atkbd->keycode));
	FUNC4(atkbd->force_release_mask, ATKBD_KEYMAP_SIZE);

	if (atkbd->translated) {
		for (i = 0; i < 128; i++) {
			scancode = atkbd_unxlate_table[i];
			atkbd->keycode[i] = atkbd_set2_keycode[scancode];
			atkbd->keycode[i | 0x80] = atkbd_set2_keycode[scancode | 0x80];
			if (atkbd->scroll)
				for (j = 0; j < FUNC0(atkbd_scroll_keys); j++)
					if ((scancode | 0x80) == atkbd_scroll_keys[j].set2)
						atkbd->keycode[i | 0x80] = atkbd_scroll_keys[j].keycode;
		}
	} else if (atkbd->set == 3) {
		FUNC5(atkbd->keycode, atkbd_set3_keycode, sizeof(atkbd->keycode));
	} else {
		FUNC5(atkbd->keycode, atkbd_set2_keycode, sizeof(atkbd->keycode));

		if (atkbd->scroll)
			for (i = 0; i < FUNC0(atkbd_scroll_keys); i++) {
				scancode = atkbd_scroll_keys[i].set2;
				atkbd->keycode[scancode] = atkbd_scroll_keys[i].keycode;
		}
	}

/*
 * HANGEUL and HANJA keys do not send release events so we need to
 * generate such events ourselves
 */
	scancode = FUNC2(atkbd, ATKBD_RET_HANGEUL);
	atkbd->keycode[scancode] = KEY_HANGEUL;
	FUNC1(scancode, atkbd->force_release_mask);

	scancode = FUNC2(atkbd, ATKBD_RET_HANJA);
	atkbd->keycode[scancode] = KEY_HANJA;
	FUNC1(scancode, atkbd->force_release_mask);

/*
 * Perform additional fixups
 */
	if (&atkbd_platform_fixup)
		FUNC3(atkbd, atkbd_platform_fixup_data);
}