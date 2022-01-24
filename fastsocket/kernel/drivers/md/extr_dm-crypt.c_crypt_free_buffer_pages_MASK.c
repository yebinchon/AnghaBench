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
struct crypt_config {int /*<<< orphan*/  page_pool; } ;
struct bio_vec {int /*<<< orphan*/ * bv_page; } ;
struct bio {unsigned int bi_vcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct bio_vec* FUNC1 (struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct crypt_config *cc, struct bio *clone)
{
	unsigned int i;
	struct bio_vec *bv;

	for (i = 0; i < clone->bi_vcnt; i++) {
		bv = FUNC1(clone, i);
		FUNC0(!bv->bv_page);
		FUNC2(bv->bv_page, cc->page_pool);
		bv->bv_page = NULL;
	}
}