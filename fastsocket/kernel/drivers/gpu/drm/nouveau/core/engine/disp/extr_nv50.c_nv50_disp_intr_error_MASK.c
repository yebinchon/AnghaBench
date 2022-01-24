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
struct nv50_disp_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_disp_priv*,char*,int,int,int,int) ; 
 int FUNC1 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp_priv*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nv50_disp_priv *priv)
{
	u32 channels = (FUNC1(priv, 0x610020) & 0x001f0000) >> 16;
	u32 addr, data;
	int chid;

	for (chid = 0; chid < 5; chid++) {
		if (!(channels & (1 << chid)))
			continue;

		FUNC2(priv, 0x610020, 0x00010000 << chid);
		addr = FUNC1(priv, 0x610080 + (chid * 0x08));
		data = FUNC1(priv, 0x610084 + (chid * 0x08));
		FUNC2(priv, 0x610080 + (chid * 0x08), 0x90000000);

		FUNC0(priv, "chid %d mthd 0x%04x data 0x%08x 0x%08x\n",
			 chid, addr & 0xffc, data, addr);
	}
}