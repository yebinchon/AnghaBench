#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  return_code; } ;
struct TYPE_4__ {TYPE_1__ out; } ;
struct tpm_cmd_t {TYPE_2__ header; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int TPM_ERROR_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int FUNC2 (struct tpm_chip*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct tpm_chip *chip, struct tpm_cmd_t *cmd,
			    int len, const char *desc)
{
	int err;

	len = FUNC2(chip,(u8 *) cmd, len);
	if (len <  0)
		return len;
	if (len == TPM_ERROR_SIZE) {
		err = FUNC0(cmd->header.out.return_code);
		FUNC1(chip->dev, "A TPM error (%d) occurred %s\n", err, desc);
		return err;
	}
	return 0;
}