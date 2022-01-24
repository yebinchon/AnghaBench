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
struct nv04_fifo_priv {int /*<<< orphan*/  ramht; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (struct nv04_fifo_priv*) ; 

void
FUNC4(struct nouveau_object *parent, int cookie)
{
	struct nv04_fifo_priv *priv = (void *)parent->engine;
	FUNC0(&FUNC3(priv)->mutex);
	FUNC2(priv->ramht, cookie);
	FUNC1(&FUNC3(priv)->mutex);
}