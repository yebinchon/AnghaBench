#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct duration_t {int /*<<< orphan*/  tpm_long; int /*<<< orphan*/  tpm_medium; int /*<<< orphan*/  tpm_short; } ;
struct timeout_t {int /*<<< orphan*/  d; int /*<<< orphan*/  c; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct TYPE_11__ {struct duration_t duration; struct timeout_t timeout; } ;
struct TYPE_12__ {TYPE_4__ cap; } ;
struct TYPE_8__ {int /*<<< orphan*/  subcap; void* subcap_size; void* cap; } ;
struct TYPE_13__ {TYPE_5__ getcap_out; TYPE_1__ getcap_in; } ;
struct TYPE_9__ {int /*<<< orphan*/  return_code; int /*<<< orphan*/  length; } ;
struct TYPE_10__ {TYPE_2__ out; void* in; } ;
struct tpm_cmd_t {TYPE_6__ params; TYPE_3__ header; } ;
struct TYPE_14__ {int* duration; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct tpm_chip {TYPE_7__ vendor; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int HZ ; 
 void* TPM_CAP_PROP ; 
 int /*<<< orphan*/  TPM_CAP_PROP_TIS_DURATION ; 
 int /*<<< orphan*/  TPM_CAP_PROP_TIS_TIMEOUT ; 
 int /*<<< orphan*/  TPM_INTERNAL_RESULT_SIZE ; 
 size_t TPM_LONG ; 
 size_t TPM_MEDIUM ; 
 size_t TPM_SHORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* tpm_getcap_header ; 
 scalar_t__ FUNC2 (struct tpm_chip*,struct tpm_cmd_t*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int) ; 

void FUNC4(struct tpm_chip *chip)
{
	struct tpm_cmd_t tpm_cmd;
	struct timeout_t *timeout_cap;
	struct duration_t *duration_cap;
	ssize_t rc;
	u32 timeout;

	tpm_cmd.header.in = tpm_getcap_header;
	tpm_cmd.params.getcap_in.cap = TPM_CAP_PROP;
	tpm_cmd.params.getcap_in.subcap_size = FUNC1(4);
	tpm_cmd.params.getcap_in.subcap = TPM_CAP_PROP_TIS_TIMEOUT;

	rc = FUNC2(chip, &tpm_cmd, TPM_INTERNAL_RESULT_SIZE,
			"attempting to determine the timeouts");
	if (rc)
		goto duration;

	if (FUNC0(tpm_cmd.header.out.length)
	    != 4 * sizeof(u32))
		goto duration;

	timeout_cap = &tpm_cmd.params.getcap_out.cap.timeout;
	/* Don't overwrite default if value is 0 */
	timeout = FUNC0(timeout_cap->a);
	if (timeout)
		chip->vendor.timeout_a = FUNC3(timeout);
	timeout = FUNC0(timeout_cap->b);
	if (timeout)
		chip->vendor.timeout_b = FUNC3(timeout);
	timeout = FUNC0(timeout_cap->c);
	if (timeout)
		chip->vendor.timeout_c = FUNC3(timeout);
	timeout = FUNC0(timeout_cap->d);
	if (timeout)
		chip->vendor.timeout_d = FUNC3(timeout);

duration:
	tpm_cmd.header.in = tpm_getcap_header;
	tpm_cmd.params.getcap_in.cap = TPM_CAP_PROP;
	tpm_cmd.params.getcap_in.subcap_size = FUNC1(4);
	tpm_cmd.params.getcap_in.subcap = TPM_CAP_PROP_TIS_DURATION;

	rc = FUNC2(chip, &tpm_cmd, TPM_INTERNAL_RESULT_SIZE,
			"attempting to determine the durations");
	if (rc)
		return;

	if (FUNC0(tpm_cmd.header.out.return_code)
	    != 3 * sizeof(u32))
		return;
	duration_cap = &tpm_cmd.params.getcap_out.cap.duration;
	chip->vendor.duration[TPM_SHORT] =
	    FUNC3(FUNC0(duration_cap->tpm_short));
	/* The Broadcom BCM0102 chipset in a Dell Latitude D820 gets the above
	 * value wrong and apparently reports msecs rather than usecs. So we
	 * fix up the resulting too-small TPM_SHORT value to make things work.
	 */
	if (chip->vendor.duration[TPM_SHORT] < (HZ/100))
		chip->vendor.duration[TPM_SHORT] = HZ;

	chip->vendor.duration[TPM_MEDIUM] =
	    FUNC3(FUNC0(duration_cap->tpm_medium));
	chip->vendor.duration[TPM_LONG] =
	    FUNC3(FUNC0(duration_cap->tpm_long));
}