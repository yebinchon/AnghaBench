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
struct pipe_state {int* pipe_0x0200; int* pipe_0x4400; } ;
struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {int* lma_window; struct pipe_state pipe_state; } ;
struct nouveau_object {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV10_PGRAPH_PIPE_ADDRESS ; 
 int /*<<< orphan*/  NV10_PGRAPH_PIPE_DATA ; 
 int /*<<< orphan*/  NV10_PGRAPH_XFMODE0 ; 
 int /*<<< orphan*/  NV10_PGRAPH_XFMODE1 ; 
 int /*<<< orphan*/  FUNC0 (struct nv10_graph_priv*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv10_graph_priv*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv10_graph_priv*) ; 
 struct nv10_graph_priv* FUNC3 (struct nv10_graph_chan*) ; 
 int FUNC4 (struct nv10_graph_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *object, u32 mthd,
			   void *args, u32 size)
{
	struct nv10_graph_chan *chan = (void *)object->parent;
	struct nv10_graph_priv *priv = FUNC3(chan);
	struct pipe_state *pipe = &chan->pipe_state;
	u32 pipe_0x0040[1], pipe_0x64c0[8], pipe_0x6a80[3], pipe_0x6ab0[3];
	u32 xfmode0, xfmode1;
	u32 data = *(u32 *)args;
	int i;

	chan->lma_window[(mthd - 0x1638) / 4] = data;

	if (mthd != 0x1644)
		return 0;

	FUNC2(priv);

	FUNC1(priv, pipe_0x0040, 0x0040);
	FUNC1(priv, pipe->pipe_0x0200, 0x0200);

	FUNC0(priv, chan->lma_window, 0x6790);

	FUNC2(priv);

	xfmode0 = FUNC4(priv, NV10_PGRAPH_XFMODE0);
	xfmode1 = FUNC4(priv, NV10_PGRAPH_XFMODE1);

	FUNC1(priv, pipe->pipe_0x4400, 0x4400);
	FUNC1(priv, pipe_0x64c0, 0x64c0);
	FUNC1(priv, pipe_0x6ab0, 0x6ab0);
	FUNC1(priv, pipe_0x6a80, 0x6a80);

	FUNC2(priv);

	FUNC5(priv, NV10_PGRAPH_XFMODE0, 0x10000000);
	FUNC5(priv, NV10_PGRAPH_XFMODE1, 0x00000000);
	FUNC5(priv, NV10_PGRAPH_PIPE_ADDRESS, 0x000064c0);
	for (i = 0; i < 4; i++)
		FUNC5(priv, NV10_PGRAPH_PIPE_DATA, 0x3f800000);
	for (i = 0; i < 4; i++)
		FUNC5(priv, NV10_PGRAPH_PIPE_DATA, 0x00000000);

	FUNC5(priv, NV10_PGRAPH_PIPE_ADDRESS, 0x00006ab0);
	for (i = 0; i < 3; i++)
		FUNC5(priv, NV10_PGRAPH_PIPE_DATA, 0x3f800000);

	FUNC5(priv, NV10_PGRAPH_PIPE_ADDRESS, 0x00006a80);
	for (i = 0; i < 3; i++)
		FUNC5(priv, NV10_PGRAPH_PIPE_DATA, 0x00000000);

	FUNC5(priv, NV10_PGRAPH_PIPE_ADDRESS, 0x00000040);
	FUNC5(priv, NV10_PGRAPH_PIPE_DATA, 0x00000008);

	FUNC0(priv, pipe->pipe_0x0200, 0x0200);

	FUNC2(priv);

	FUNC0(priv, pipe_0x0040, 0x0040);

	FUNC5(priv, NV10_PGRAPH_XFMODE0, xfmode0);
	FUNC5(priv, NV10_PGRAPH_XFMODE1, xfmode1);

	FUNC0(priv, pipe_0x64c0, 0x64c0);
	FUNC0(priv, pipe_0x6ab0, 0x6ab0);
	FUNC0(priv, pipe_0x6a80, 0x6a80);
	FUNC0(priv, pipe->pipe_0x4400, 0x4400);

	FUNC5(priv, NV10_PGRAPH_PIPE_ADDRESS, 0x000000c0);
	FUNC5(priv, NV10_PGRAPH_PIPE_DATA, 0x00000000);

	FUNC2(priv);

	return 0;
}