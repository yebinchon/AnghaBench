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
typedef  int /*<<< orphan*/  u8 ;
struct smscore_device_t {int device_flags; int /*<<< orphan*/  context; int /*<<< orphan*/  device; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int (* loadfirmware_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SMS_ALLOC_ALIGNMENT ; 
 int SMS_DEVICE_FAMILY2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct smscore_device_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct smscore_device_t *coredev,
					   char *filename,
					   loadfirmware_t loadfirmware_handler)
{
	int rc = -ENOENT;
	const struct firmware *fw;
	u8 *fw_buffer;

	if (loadfirmware_handler == NULL && !(coredev->device_flags &
					      SMS_DEVICE_FAMILY2))
		return -EINVAL;

	rc = FUNC5(&fw, filename, coredev->device);
	if (rc < 0) {
		FUNC6("failed to open \"%s\"", filename);
		return rc;
	}
	FUNC6("read FW %s, size=%zd", filename, fw->size);
	fw_buffer = FUNC2(FUNC0(fw->size, SMS_ALLOC_ALIGNMENT),
			    GFP_KERNEL | GFP_DMA);
	if (fw_buffer) {
		FUNC3(fw_buffer, fw->data, fw->size);

		rc = (coredev->device_flags & SMS_DEVICE_FAMILY2) ?
		      FUNC7(coredev,
						    fw_buffer,
						    fw->size) :
		      loadfirmware_handler(coredev->context,
					   fw_buffer, fw->size);

		FUNC1(fw_buffer);
	} else {
		FUNC6("failed to allocate firmware buffer");
		rc = -ENOMEM;
	}

	FUNC4(fw);

	return rc;
}