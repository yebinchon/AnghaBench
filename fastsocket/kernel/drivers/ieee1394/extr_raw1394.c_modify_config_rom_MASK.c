#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_9__ {size_t misc; scalar_t__ length; int /*<<< orphan*/  recvb; int /*<<< orphan*/  sendb; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {struct csr1212_keyval** csr1212_dirs; TYPE_8__* host; } ;
struct TYPE_10__ {struct csr1212_dentry* dentries_head; } ;
struct TYPE_11__ {TYPE_2__ directory; } ;
struct csr1212_keyval {TYPE_3__ value; struct csr1212_keyval* next; } ;
struct csr1212_dentry {int /*<<< orphan*/  kv; struct csr1212_dentry* next; } ;
struct csr1212_csr_rom_cache {scalar_t__ len; TYPE_6__* filled_head; struct csr1212_keyval* layout_head; struct csr1212_keyval* layout_tail; scalar_t__ size; int /*<<< orphan*/  data; TYPE_6__* filled_tail; } ;
typedef  int /*<<< orphan*/  dr ;
struct TYPE_13__ {TYPE_4__* rom; } ;
struct TYPE_15__ {TYPE_5__ csr; } ;
struct TYPE_14__ {scalar_t__ offset_end; scalar_t__ offset_start; } ;
struct TYPE_12__ {int /*<<< orphan*/  root_kv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csr1212_csr_rom_cache*) ; 
 int /*<<< orphan*/  CSR1212_KV_ID_VENDOR ; 
 int CSR1212_SUCCESS ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t RAW1394_MAX_USER_CSR_DIRS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csr1212_keyval* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct csr1212_keyval*,struct csr1212_csr_rom_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct csr1212_keyval*) ; 
 struct csr1212_csr_rom_cache* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pending_request*) ; 
 int FUNC10 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 TYPE_6__* FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct file_info *fi, struct pending_request *req)
{
	struct csr1212_keyval *kv;
	struct csr1212_csr_rom_cache *cache;
	struct csr1212_dentry *dentry;
	u32 dr;
	int ret = 0;

	if (req->req.misc == ~0) {
		if (req->req.length == 0)
			return -EINVAL;

		/* Find an unused slot */
		for (dr = 0;
		     dr < RAW1394_MAX_USER_CSR_DIRS && fi->csr1212_dirs[dr];
		     dr++) ;

		if (dr == RAW1394_MAX_USER_CSR_DIRS)
			return -ENOMEM;

		fi->csr1212_dirs[dr] =
		    FUNC5(CSR1212_KV_ID_VENDOR);
		if (!fi->csr1212_dirs[dr])
			return -ENOMEM;
	} else {
		dr = req->req.misc;
		if (!fi->csr1212_dirs[dr])
			return -EINVAL;

		/* Delete old stuff */
		for (dentry =
		     fi->csr1212_dirs[dr]->value.directory.dentries_head;
		     dentry; dentry = dentry->next) {
			FUNC4(fi->host->csr.rom->
							     root_kv,
							     dentry->kv);
		}

		if (req->req.length == 0) {
			FUNC7(fi->csr1212_dirs[dr]);
			fi->csr1212_dirs[dr] = NULL;

			FUNC10(fi->host);
			FUNC9(req);
			return 0;
		}
	}

	cache = FUNC8(0, req->req.length);
	if (!cache) {
		FUNC7(fi->csr1212_dirs[dr]);
		fi->csr1212_dirs[dr] = NULL;
		return -ENOMEM;
	}

	cache->filled_head = FUNC13(sizeof(*cache->filled_head), GFP_KERNEL);
	if (!cache->filled_head) {
		FUNC7(fi->csr1212_dirs[dr]);
		fi->csr1212_dirs[dr] = NULL;
		FUNC0(cache);
		return -ENOMEM;
	}
	cache->filled_tail = cache->filled_head;

	if (FUNC1(cache->data, FUNC11(req->req.sendb),
			   req->req.length)) {
		FUNC7(fi->csr1212_dirs[dr]);
		fi->csr1212_dirs[dr] = NULL;
		ret = -EFAULT;
	} else {
		cache->len = req->req.length;
		cache->filled_head->offset_start = 0;
		cache->filled_head->offset_end = cache->size - 1;

		cache->layout_head = cache->layout_tail = fi->csr1212_dirs[dr];

		ret = CSR1212_SUCCESS;
		/* parse all the items */
		for (kv = cache->layout_head; ret == CSR1212_SUCCESS && kv;
		     kv = kv->next) {
			ret = FUNC6(kv, cache);
		}

		/* attach top level items to the root directory */
		for (dentry =
		     fi->csr1212_dirs[dr]->value.directory.dentries_head;
		     ret == CSR1212_SUCCESS && dentry; dentry = dentry->next) {
			ret =
			    FUNC3(fi->host->csr.
							       rom->root_kv,
							       dentry->kv);
		}

		if (ret == CSR1212_SUCCESS) {
			ret = FUNC10(fi->host);

			if (ret >= 0 && FUNC2(FUNC11(req->req.recvb),
						     &dr, sizeof(dr))) {
				ret = -ENOMEM;
			}
		}
	}
	FUNC12(cache->filled_head);
	FUNC0(cache);

	if (ret >= 0) {
		/* we have to free the request, because we queue no response,
		 * and therefore nobody will free it */
		FUNC9(req);
		return 0;
	} else {
		for (dentry =
		     fi->csr1212_dirs[dr]->value.directory.dentries_head;
		     dentry; dentry = dentry->next) {
			FUNC4(fi->host->csr.rom->
							     root_kv,
							     dentry->kv);
		}
		FUNC7(fi->csr1212_dirs[dr]);
		fi->csr1212_dirs[dr] = NULL;
		return ret;
	}
}