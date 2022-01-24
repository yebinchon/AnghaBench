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
typedef  int uint32_t ;
struct pxa27x_keypad_platform_data {int matrix_key_cols; int matrix_key_rows; } ;
struct pxa27x_keypad {int* matrix_key_state; int /*<<< orphan*/ * keycodes; struct input_dev* input_dev; struct pxa27x_keypad_platform_data* pdata; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  new_state ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  KPAS ; 
 int /*<<< orphan*/  KPASMKP0 ; 
 int /*<<< orphan*/  KPASMKP1 ; 
 int /*<<< orphan*/  KPASMKP2 ; 
 int /*<<< orphan*/  KPASMKP3 ; 
 int KPASMKP_MKC_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MATRIX_ROW_SHIFT ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int MAX_MATRIX_KEY_COLS ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct pxa27x_keypad *keypad)
{
	struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
	struct input_dev *input_dev = keypad->input_dev;
	int row, col, num_keys_pressed = 0;
	uint32_t new_state[MAX_MATRIX_KEY_COLS];
	uint32_t kpas = FUNC7(KPAS);

	num_keys_pressed = FUNC1(kpas);

	FUNC9(new_state, 0, sizeof(new_state));

	if (num_keys_pressed == 0)
		goto scan;

	if (num_keys_pressed == 1) {
		col = FUNC0(kpas);
		row = FUNC2(kpas);

		/* if invalid row/col, treat as no key pressed */
		if (col >= pdata->matrix_key_cols ||
		    row >= pdata->matrix_key_rows)
			goto scan;

		new_state[col] = (1 << row);
		goto scan;
	}

	if (num_keys_pressed > 1) {
		uint32_t kpasmkp0 = FUNC7(KPASMKP0);
		uint32_t kpasmkp1 = FUNC7(KPASMKP1);
		uint32_t kpasmkp2 = FUNC7(KPASMKP2);
		uint32_t kpasmkp3 = FUNC7(KPASMKP3);

		new_state[0] = kpasmkp0 & KPASMKP_MKC_MASK;
		new_state[1] = (kpasmkp0 >> 16) & KPASMKP_MKC_MASK;
		new_state[2] = kpasmkp1 & KPASMKP_MKC_MASK;
		new_state[3] = (kpasmkp1 >> 16) & KPASMKP_MKC_MASK;
		new_state[4] = kpasmkp2 & KPASMKP_MKC_MASK;
		new_state[5] = (kpasmkp2 >> 16) & KPASMKP_MKC_MASK;
		new_state[6] = kpasmkp3 & KPASMKP_MKC_MASK;
		new_state[7] = (kpasmkp3 >> 16) & KPASMKP_MKC_MASK;
	}
scan:
	for (col = 0; col < pdata->matrix_key_cols; col++) {
		uint32_t bits_changed;
		int code;

		bits_changed = keypad->matrix_key_state[col] ^ new_state[col];
		if (bits_changed == 0)
			continue;

		for (row = 0; row < pdata->matrix_key_rows; row++) {
			if ((bits_changed & (1 << row)) == 0)
				continue;

			code = FUNC3(row, col, MATRIX_ROW_SHIFT);
			FUNC4(input_dev, EV_MSC, MSC_SCAN, code);
			FUNC5(input_dev, keypad->keycodes[code],
					 new_state[col] & (1 << row));
		}
	}
	FUNC6(input_dev);
	FUNC8(keypad->matrix_key_state, new_state, sizeof(new_state));
}