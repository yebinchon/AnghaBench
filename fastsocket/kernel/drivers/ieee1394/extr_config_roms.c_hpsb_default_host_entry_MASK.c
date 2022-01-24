#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int guid_hi; TYPE_3__* rom; } ;
struct hpsb_host {int update_config_rom; TYPE_2__ csr; TYPE_1__* driver; } ;
struct csr1212_keyval {int dummy; } ;
struct TYPE_6__ {struct csr1212_keyval* root_kv; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR1212_KV_ID_VENDOR ; 
 int CSR1212_SUCCESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct csr1212_keyval*,struct csr1212_keyval*) ; 
 int FUNC1 (struct csr1212_keyval*,struct csr1212_keyval*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct csr1212_keyval* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct csr1212_keyval* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct csr1212_keyval*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

int FUNC7(struct hpsb_host *host)
{
	struct csr1212_keyval *root;
	struct csr1212_keyval *vend_id = NULL;
	struct csr1212_keyval *text = NULL;
	char csr_name[128];
	int ret;

	FUNC6(csr_name, "Linux - %s", host->driver->name);
	root = host->csr.rom->root_kv;

	vend_id = FUNC3(CSR1212_KV_ID_VENDOR, host->csr.guid_hi >> 8);
	text = FUNC4(csr_name);

	if (!vend_id || !text) {
		if (vend_id)
			FUNC5(vend_id);
		if (text)
			FUNC5(text);
		FUNC2(host->csr.rom);
		return -ENOMEM;
	}

	FUNC0(vend_id, text);
	FUNC5(text);
	ret = FUNC1(root, vend_id);
	FUNC5(vend_id);
	if (ret != CSR1212_SUCCESS) {
		FUNC2(host->csr.rom);
		return -ENOMEM;
	}

	host->update_config_rom = 1;

	return 0;
}