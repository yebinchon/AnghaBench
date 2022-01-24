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
struct pci_dev {int dummy; } ;
struct nouveau_cli {int /*<<< orphan*/  mutex; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nouveau_config ; 
 int /*<<< orphan*/  nouveau_debug ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC4(struct pci_dev *pdev, const char *name,
		   int size, void **pcli)
{
	struct nouveau_cli *cli;
	int ret;

	*pcli = NULL;
	ret = FUNC1(name, FUNC3(pdev), nouveau_config,
				     nouveau_debug, size, pcli);
	cli = *pcli;
	if (ret) {
		if (cli)
			FUNC2(&cli->base);
		*pcli = NULL;
		return ret;
	}

	FUNC0(&cli->mutex);
	return 0;
}