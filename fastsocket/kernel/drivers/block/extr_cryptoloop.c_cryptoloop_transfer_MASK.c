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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct loop_device {struct crypto_blkcipher* key_data; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/ * info; int /*<<< orphan*/  flags; struct crypto_blkcipher* tfm; } ;
typedef  int sector_t ;
typedef  int (* encdec_cbc_t ) (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int const) ;
struct TYPE_2__ {int (* decrypt ) (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int const) ;int (* encrypt ) (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int const) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  LOOP_IV_SECTOR_SIZE ; 
 int READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct crypto_blkcipher*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,struct page*,int const,unsigned int) ; 

__attribute__((used)) static int
FUNC5(struct loop_device *lo, int cmd,
		    struct page *raw_page, unsigned raw_off,
		    struct page *loop_page, unsigned loop_off,
		    int size, sector_t IV)
{
	struct crypto_blkcipher *tfm = lo->key_data;
	struct blkcipher_desc desc = {
		.tfm = tfm,
		.flags = CRYPTO_TFM_REQ_MAY_SLEEP,
	};
	struct scatterlist sg_out;
	struct scatterlist sg_in;

	encdec_cbc_t encdecfunc;
	struct page *in_page, *out_page;
	unsigned in_offs, out_offs;
	int err;

	FUNC3(&sg_out, 1);
	FUNC3(&sg_in, 1);

	if (cmd == READ) {
		in_page = raw_page;
		in_offs = raw_off;
		out_page = loop_page;
		out_offs = loop_off;
		encdecfunc = FUNC1(tfm)->decrypt;
	} else {
		in_page = loop_page;
		in_offs = loop_off;
		out_page = raw_page;
		out_offs = raw_off;
		encdecfunc = FUNC1(tfm)->encrypt;
	}

	while (size > 0) {
		const int sz = FUNC2(size, LOOP_IV_SECTOR_SIZE);
		u32 iv[4] = { 0, };
		iv[0] = FUNC0(IV & 0xffffffff);

		FUNC4(&sg_in, in_page, sz, in_offs);
		FUNC4(&sg_out, out_page, sz, out_offs);

		desc.info = iv;
		err = encdecfunc(&desc, &sg_out, &sg_in, sz);
		if (err)
			return err;

		IV++;
		size -= sz;
		in_offs += sz;
		out_offs += sz;
	}

	return 0;
}