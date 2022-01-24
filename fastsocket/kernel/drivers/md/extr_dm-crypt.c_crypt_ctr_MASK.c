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
struct dm_target {char* error; int num_flush_requests; int /*<<< orphan*/  table; struct crypt_config* private; } ;
struct dm_crypt_request {int dummy; } ;
struct crypt_config {unsigned int key_size; int dmreq_start; unsigned long long iv_offset; unsigned long long start; void* crypt_queue; void* io_queue; int /*<<< orphan*/  dev; int /*<<< orphan*/  bs; int /*<<< orphan*/  page_pool; int /*<<< orphan*/ * req; int /*<<< orphan*/  req_pool; scalar_t__ iv_size; int /*<<< orphan*/  tfm; int /*<<< orphan*/  io_pool; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIN_IOS ; 
 int /*<<< orphan*/  MIN_POOL_PAGES ; 
 int /*<<< orphan*/  _crypt_io_pool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*) ; 
 int FUNC3 (struct dm_target*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_target*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct crypt_config* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,char*,unsigned long long*) ; 
 int FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct crypt_config *cc;
	unsigned int key_size;
	unsigned long long tmpll;
	int ret;

	if (argc != 5) {
		ti->error = "Not enough arguments";
		return -EINVAL;
	}

	key_size = FUNC15(argv[1]) >> 1;

	cc = FUNC10(sizeof(*cc) + key_size * sizeof(u8), GFP_KERNEL);
	if (!cc) {
		ti->error = "Cannot allocate encryption context";
		return -ENOMEM;
	}
	cc->key_size = key_size;

	ti->private = cc;
	ret = FUNC3(ti, argv[0], argv[1]);
	if (ret < 0)
		goto bad;

	ret = -ENOMEM;
	cc->io_pool = FUNC13(MIN_IOS, _crypt_io_pool);
	if (!cc->io_pool) {
		ti->error = "Cannot allocate crypt io mempool";
		goto bad;
	}

	cc->dmreq_start = sizeof(struct ablkcipher_request);
	cc->dmreq_start += FUNC6(cc->tfm);
	cc->dmreq_start = FUNC0(cc->dmreq_start, FUNC7());
	cc->dmreq_start += FUNC5(cc->tfm) &
			   ~(FUNC7() - 1);

	cc->req_pool = FUNC11(MIN_IOS, cc->dmreq_start +
			sizeof(struct dm_crypt_request) + cc->iv_size);
	if (!cc->req_pool) {
		ti->error = "Cannot allocate crypt request mempool";
		goto bad;
	}
	cc->req = NULL;

	cc->page_pool = FUNC12(MIN_POOL_PAGES, 0);
	if (!cc->page_pool) {
		ti->error = "Cannot allocate page mempool";
		goto bad;
	}

	cc->bs = FUNC1(MIN_IOS, 0);
	if (!cc->bs) {
		ti->error = "Cannot allocate crypt bioset";
		goto bad;
	}

	ret = -EINVAL;
	if (FUNC14(argv[2], "%llu", &tmpll) != 1) {
		ti->error = "Invalid iv_offset sector";
		goto bad;
	}
	cc->iv_offset = tmpll;

	if (FUNC8(ti, argv[3], FUNC9(ti->table), &cc->dev)) {
		ti->error = "Device lookup failed";
		goto bad;
	}

	if (FUNC14(argv[4], "%llu", &tmpll) != 1) {
		ti->error = "Invalid device sector";
		goto bad;
	}
	cc->start = tmpll;

	ret = -ENOMEM;
	cc->io_queue = FUNC2("kcryptd_io");
	if (!cc->io_queue) {
		ti->error = "Couldn't create kcryptd io queue";
		goto bad;
	}

	cc->crypt_queue = FUNC2("kcryptd");
	if (!cc->crypt_queue) {
		ti->error = "Couldn't create kcryptd queue";
		goto bad;
	}

	ti->num_flush_requests = 1;
	return 0;

bad:
	FUNC4(ti);
	return ret;
}