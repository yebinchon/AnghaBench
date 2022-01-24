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
struct scatterlist {unsigned int offset; unsigned int length; } ;
struct page {int dummy; } ;
struct hash_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* dia_update ) (struct crypto_tfm*,char*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ cra_digest; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct crypto_tfm* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 struct scatterlist* FUNC6 (struct scatterlist*) ; 
 struct page* FUNC7 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_tfm*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_tfm*,char*,unsigned int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 

__attribute__((used)) static int FUNC11(struct hash_desc *desc,
		   struct scatterlist *sg, unsigned int nbytes)
{
	struct crypto_tfm *tfm = FUNC0(desc->tfm);
	unsigned int alignmask = FUNC3(tfm);

	if (!nbytes)
		return 0;

	for (;;) {
		struct page *pg = FUNC7(sg);
		unsigned int offset = sg->offset;
		unsigned int l = sg->length;

		if (FUNC10(l > nbytes))
			l = nbytes;
		nbytes -= l;

		do {
			unsigned int bytes_from_page = FUNC5(l, ((unsigned int)
							   (PAGE_SIZE)) - 
							   offset);
			char *src = FUNC1(pg, 0);
			char *p = src + offset;

			if (FUNC10(offset & alignmask)) {
				unsigned int bytes =
					alignmask + 1 - (offset & alignmask);
				bytes = FUNC5(bytes, bytes_from_page);
				tfm->__crt_alg->cra_digest.dia_update(tfm, p,
								      bytes);
				p += bytes;
				bytes_from_page -= bytes;
				l -= bytes;
			}
			tfm->__crt_alg->cra_digest.dia_update(tfm, p,
							      bytes_from_page);
			FUNC2(src, 0);
			FUNC4(desc->flags);
			offset = 0;
			pg++;
			l -= bytes_from_page;
		} while (l > 0);

		if (!nbytes)
			break;
		sg = FUNC6(sg);
	}

	return 0;
}