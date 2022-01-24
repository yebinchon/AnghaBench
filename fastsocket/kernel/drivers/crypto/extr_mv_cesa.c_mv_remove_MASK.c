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
struct platform_device {int dummy; } ;
struct crypto_priv {int /*<<< orphan*/  reg; int /*<<< orphan*/  sram; int /*<<< orphan*/  sram_size; int /*<<< orphan*/  irq; int /*<<< orphan*/  queue_th; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cpg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct crypto_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_aes_alg_cbc ; 
 int /*<<< orphan*/  mv_aes_alg_ecb ; 
 struct crypto_priv* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct crypto_priv *cp = FUNC6(pdev);

	FUNC0(&mv_aes_alg_ecb);
	FUNC0(&mv_aes_alg_cbc);
	FUNC4(cp->queue_th);
	FUNC1(cp->irq, cp);
	FUNC5(cp->sram, 0, cp->sram_size);
	FUNC2(cp->sram);
	FUNC2(cp->reg);
	FUNC3(cp);
	cpg = NULL;
	return 0;
}