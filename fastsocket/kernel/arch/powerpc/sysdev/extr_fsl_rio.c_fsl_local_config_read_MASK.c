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
typedef  scalar_t__ u32 ;
struct rio_priv {scalar_t__ regs_win; } ;
struct rio_mport {struct rio_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct rio_mport *mport,
				int index, u32 offset, int len, u32 *data)
{
	struct rio_priv *priv = mport->priv;
	FUNC1("fsl_local_config_read: index %d offset %8.8x\n", index,
		 offset);
	*data = FUNC0(priv->regs_win + offset);

	return 0;
}