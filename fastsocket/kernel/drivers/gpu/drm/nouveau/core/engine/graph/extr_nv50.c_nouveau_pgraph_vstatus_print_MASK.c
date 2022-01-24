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
typedef  int u32 ;
struct nv50_graph_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_graph_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct nv50_graph_priv *priv, int r,
		const char *const units[], u32 status)
{
	int i;

	FUNC0(priv, "PGRAPH_VSTATUS%d: 0x%08x", r, status);

	for (i = 0; units[i] && status; i++) {
		if ((status & 7) == 1)
			FUNC1(" %s", units[i]);
		status >>= 3;
	}
	if (status)
		FUNC1(" (invalid: 0x%x)", status);
	FUNC1("\n");
}