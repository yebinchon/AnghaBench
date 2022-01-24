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
struct iucv_path {int dummy; } ;
struct hvc_struct {int /*<<< orphan*/  vtermno; } ;
struct hvc_iucv_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  iucv_state; struct iucv_path* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  IUCV_DISCONN ; 
 int /*<<< orphan*/  FUNC0 (struct hvc_iucv_private*) ; 
 struct hvc_iucv_private* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iucv_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct iucv_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hvc_struct *hp, int raise)
{
	struct hvc_iucv_private *priv;
	struct iucv_path        *path;

	/* Raising the DTR/RTS is ignored as IUCV connections can be
	 * established at any times.
	 */
	if (raise)
		return;

	priv = FUNC1(hp->vtermno);
	if (!priv)
		return;

	/* Lowering the DTR/RTS lines disconnects an established IUCV
	 * connection.
	 */
	FUNC0(priv);

	FUNC4(&priv->lock);
	path = priv->path;		/* save reference to IUCV path */
	priv->path = NULL;
	priv->iucv_state = IUCV_DISCONN;
	FUNC5(&priv->lock);

	/* Sever IUCV path outside of priv->lock due to lock ordering of:
	 * priv->lock <--> iucv_table_lock */
	if (path) {
		FUNC3(path, NULL);
		FUNC2(path);
	}
}