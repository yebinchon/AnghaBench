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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_integer ;

/* Variables and functions */
#define  ACPI_ANY_BASE 128 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 char FUNC6 (char) ; 
 scalar_t__ FUNC7 (char) ; 
 int ACPI_UINT32_MAX ; 
 int ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  AE_BAD_DECIMAL_CONSTANT ; 
 int /*<<< orphan*/  AE_BAD_HEX_CONSTANT ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int acpi_gbl_integer_byte_width ; 
 int /*<<< orphan*/  FUNC8 (int,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_stroul64 ; 

acpi_status
FUNC10(char *string, u32 base, acpi_integer * ret_integer)
{
	u32 this_digit = 0;
	acpi_integer return_value = 0;
	acpi_integer quotient;
	acpi_integer dividend;
	u32 to_integer_op = (base == ACPI_ANY_BASE);
	u32 mode32 = (acpi_gbl_integer_byte_width == 4);
	u8 valid_digits = 0;
	u8 sign_of0x = 0;
	u8 term = 0;

	FUNC2(ut_stroul64, string);

	switch (base) {
	case ACPI_ANY_BASE:
	case 16:
		break;

	default:
		/* Invalid Base */
		FUNC9(AE_BAD_PARAMETER);
	}

	if (!string) {
		goto error_exit;
	}

	/* Skip over any white space in the buffer */

	while ((*string) && (FUNC4(*string) || *string == '\t')) {
		string++;
	}

	if (to_integer_op) {
		/*
		 * Base equal to ACPI_ANY_BASE means 'to_integer operation case'.
		 * We need to determine if it is decimal or hexadecimal.
		 */
		if ((*string == '0') && (FUNC6(*(string + 1)) == 'x')) {
			sign_of0x = 1;
			base = 16;

			/* Skip over the leading '0x' */
			string += 2;
		} else {
			base = 10;
		}
	}

	/* Any string left? Check that '0x' is not followed by white space. */

	if (!(*string) || FUNC4(*string) || *string == '\t') {
		if (to_integer_op) {
			goto error_exit;
		} else {
			goto all_done;
		}
	}

	/*
	 * Perform a 32-bit or 64-bit conversion, depending upon the current
	 * execution mode of the interpreter
	 */
	dividend = (mode32) ? ACPI_UINT32_MAX : ACPI_UINT64_MAX;

	/* Main loop: convert the string to a 32- or 64-bit integer */

	while (*string) {
		if (FUNC3(*string)) {

			/* Convert ASCII 0-9 to Decimal value */

			this_digit = ((u8) * string) - '0';
		} else if (base == 10) {

			/* Digit is out of range; possible in to_integer case only */

			term = 1;
		} else {
			this_digit = (u8) FUNC7(*string);
			if (FUNC5((char)this_digit)) {

				/* Convert ASCII Hex char to value */

				this_digit = this_digit - 'A' + 10;
			} else {
				term = 1;
			}
		}

		if (term) {
			if (to_integer_op) {
				goto error_exit;
			} else {
				break;
			}
		} else if ((valid_digits == 0) && (this_digit == 0)
			   && !sign_of0x) {

			/* Skip zeros */
			string++;
			continue;
		}

		valid_digits++;

		if (sign_of0x && ((valid_digits > 16)
				  || ((valid_digits > 8) && mode32))) {
			/*
			 * This is to_integer operation case.
			 * No any restrictions for string-to-integer conversion,
			 * see ACPI spec.
			 */
			goto error_exit;
		}

		/* Divide the digit into the correct position */

		(void)
		    FUNC8((dividend - (acpi_integer) this_digit),
					 base, &quotient, NULL);

		if (return_value > quotient) {
			if (to_integer_op) {
				goto error_exit;
			} else {
				break;
			}
		}

		return_value *= base;
		return_value += this_digit;
		string++;
	}

	/* All done, normal exit */

      all_done:

	FUNC0((ACPI_DB_EXEC, "Converted value: %8.8X%8.8X\n",
			  FUNC1(return_value)));

	*ret_integer = return_value;
	FUNC9(AE_OK);

      error_exit:
	/* Base was set/validated above */

	if (base == 10) {
		FUNC9(AE_BAD_DECIMAL_CONSTANT);
	} else {
		FUNC9(AE_BAD_HEX_CONSTANT);
	}
}