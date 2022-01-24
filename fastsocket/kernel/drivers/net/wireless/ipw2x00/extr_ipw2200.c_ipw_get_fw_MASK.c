#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipw_priv {TYPE_1__* pci_dev; } ;
struct ipw_fw {int /*<<< orphan*/  ver; int /*<<< orphan*/  fw_size; int /*<<< orphan*/  ucode_size; int /*<<< orphan*/  boot_size; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ipw_priv *priv,
		      const struct firmware **raw, const char *name)
{
	struct ipw_fw *fw;
	int rc;

	/* ask firmware_class module to get the boot firmware off disk */
	rc = FUNC3(raw, name, &priv->pci_dev->dev);
	if (rc < 0) {
		FUNC1("%s request_firmware failed: Reason %d\n", name, rc);
		return rc;
	}

	if ((*raw)->size < sizeof(*fw)) {
		FUNC1("%s is too small (%zd)\n", name, (*raw)->size);
		return -EINVAL;
	}

	fw = (void *)(*raw)->data;

	if ((*raw)->size < sizeof(*fw) + FUNC2(fw->boot_size) +
	    FUNC2(fw->ucode_size) + FUNC2(fw->fw_size)) {
		FUNC1("%s is too small or corrupt (%zd)\n",
			  name, (*raw)->size);
		return -EINVAL;
	}

	FUNC0("Read firmware '%s' image v%d.%d (%zd bytes)\n",
		       name,
		       FUNC2(fw->ver) >> 16,
		       FUNC2(fw->ver) & 0xff,
		       (*raw)->size - sizeof(*fw));
	return 0;
}