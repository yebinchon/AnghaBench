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
struct nv50_mpeg_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_mpeg_priv*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nv50_mpeg_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_mpeg_priv*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_subdev *subdev)
{
	struct nv50_mpeg_priv *priv = (void *)subdev;

	if (FUNC2(priv, 0x00b100))
		FUNC0(subdev);

	if (FUNC2(priv, 0x00b800)) {
		u32 stat = FUNC2(priv, 0x00b800);
		FUNC1(priv, "PMSRCH: 0x%08x\n", stat);
		FUNC3(priv, 0xb800, stat);
	}
}