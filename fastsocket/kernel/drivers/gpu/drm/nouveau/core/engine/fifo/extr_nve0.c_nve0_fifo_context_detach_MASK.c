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
typedef  int u32 ;
struct nve0_fifo_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chid; } ;
struct nve0_fifo_chan {TYPE_1__ base; } ;
struct nve0_fifo_base {int dummy; } ;
struct nouveau_object {scalar_t__ engine; scalar_t__ parent; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  NVDEV_ENGINE_BSP 134 
#define  NVDEV_ENGINE_COPY0 133 
#define  NVDEV_ENGINE_COPY1 132 
#define  NVDEV_ENGINE_GR 131 
#define  NVDEV_ENGINE_PPP 130 
#define  NVDEV_ENGINE_SW 129 
#define  NVDEV_ENGINE_VP 128 
 struct nouveau_bar* FUNC0 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct nve0_fifo_chan*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nve0_fifo_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nve0_fifo_priv*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nve0_fifo_base*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nve0_fifo_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_bar*) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_object *parent, bool suspend,
			 struct nouveau_object *object)
{
	struct nouveau_bar *bar = FUNC0(parent);
	struct nve0_fifo_priv *priv = (void *)parent->engine;
	struct nve0_fifo_base *base = (void *)parent->parent;
	struct nve0_fifo_chan *chan = (void *)parent;
	u32 addr;

	switch (FUNC2(object->engine)) {
	case NVDEV_ENGINE_SW   : return 0;
	case NVDEV_ENGINE_GR   :
	case NVDEV_ENGINE_COPY0:
	case NVDEV_ENGINE_COPY1: addr = 0x0210; break;
	case NVDEV_ENGINE_BSP  : addr = 0x0270; break;
	case NVDEV_ENGINE_VP   : addr = 0x0250; break;
	case NVDEV_ENGINE_PPP  : addr = 0x0260; break;
	default:
		return -EINVAL;
	}

	FUNC6(priv, 0x002634, chan->base.chid);
	if (!FUNC4(priv, 0x002634, 0xffffffff, chan->base.chid)) {
		FUNC3(priv, "channel %d [%s] kick timeout\n",
			 chan->base.chid, FUNC1(chan));
		if (suspend)
			return -EBUSY;
	}

	FUNC5(base, addr + 0x00, 0x00000000);
	FUNC5(base, addr + 0x04, 0x00000000);
	bar->flush(bar);
	return 0;
}