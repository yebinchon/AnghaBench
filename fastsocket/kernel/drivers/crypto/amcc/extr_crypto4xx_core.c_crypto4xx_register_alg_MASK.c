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
struct crypto4xx_device {int /*<<< orphan*/  alg_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  cipher; int /*<<< orphan*/  hash; } ;
struct crypto4xx_alg_common {int type; TYPE_1__ u; } ;
struct crypto4xx_alg {int /*<<< orphan*/  entry; struct crypto4xx_alg_common alg; struct crypto4xx_device* dev; } ;

/* Variables and functions */
#define  CRYPTO_ALG_TYPE_AHASH 128 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto4xx_alg*) ; 
 struct crypto4xx_alg* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct crypto4xx_device *sec_dev,
			   struct crypto4xx_alg_common *crypto_alg,
			   int array_size)
{
	struct crypto4xx_alg *alg;
	int i;
	int rc = 0;

	for (i = 0; i < array_size; i++) {
		alg = FUNC3(sizeof(struct crypto4xx_alg), GFP_KERNEL);
		if (!alg)
			return -ENOMEM;

		alg->alg = crypto_alg[i];
		alg->dev = sec_dev;

		switch (alg->alg.type) {
		case CRYPTO_ALG_TYPE_AHASH:
			rc = FUNC0(&alg->alg.u.hash);
			break;

		default:
			rc = FUNC1(&alg->alg.u.cipher);
			break;
		}

		if (rc) {
			FUNC5(&alg->entry);
			FUNC2(alg);
		} else {
			FUNC4(&alg->entry, &sec_dev->alg_list);
		}
	}

	return 0;
}