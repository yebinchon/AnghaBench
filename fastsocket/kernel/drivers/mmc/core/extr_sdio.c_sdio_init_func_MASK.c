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
struct sdio_func {unsigned int num; } ;
struct mmc_card {struct sdio_func** sdio_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sdio_func*) ; 
 int FUNC2 (struct sdio_func*) ; 
 unsigned int SDIO_MAX_FUNCS ; 
 struct sdio_func* FUNC3 (struct mmc_card*) ; 
 int FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC7(struct mmc_card *card, unsigned int fn)
{
	int ret;
	struct sdio_func *func;

	FUNC0(fn > SDIO_MAX_FUNCS);

	func = FUNC3(card);
	if (FUNC1(func))
		return FUNC2(func);

	func->num = fn;

	ret = FUNC4(func);
	if (ret)
		goto fail;

	ret = FUNC5(func);
	if (ret)
		goto fail;

	card->sdio_func[fn - 1] = func;

	return 0;

fail:
	/*
	 * It is okay to remove the function here even though we hold
	 * the host lock as we haven't registered the device yet.
	 */
	FUNC6(func);
	return ret;
}