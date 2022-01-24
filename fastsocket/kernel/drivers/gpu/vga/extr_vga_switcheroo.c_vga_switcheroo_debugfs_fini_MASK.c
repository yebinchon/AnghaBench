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
struct vgasr_priv {int /*<<< orphan*/ * debugfs_root; int /*<<< orphan*/ * switch_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct vgasr_priv *priv)
{
	if (priv->switch_file) {
		FUNC0(priv->switch_file);
		priv->switch_file = NULL;
	}
	if (priv->debugfs_root) {
		FUNC0(priv->debugfs_root);
		priv->debugfs_root = NULL;
	}
}