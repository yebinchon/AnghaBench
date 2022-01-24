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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct nouveau_cli {int /*<<< orphan*/  head; scalar_t__ abi16; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct nouveau_cli* FUNC4 (struct drm_file*) ; 
 struct nouveau_drm* FUNC5 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC6(struct drm_device *dev, struct drm_file *fpriv)
{
	struct nouveau_cli *cli = FUNC4(fpriv);
	struct nouveau_drm *drm = FUNC5(dev);

	if (cli->abi16)
		FUNC3(cli->abi16);

	FUNC1(&drm->client.mutex);
	FUNC0(&cli->head);
	FUNC2(&drm->client.mutex);
}