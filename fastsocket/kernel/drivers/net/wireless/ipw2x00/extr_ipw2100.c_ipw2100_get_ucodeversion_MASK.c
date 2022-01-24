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
typedef  int /*<<< orphan*/  ver ;
typedef  int u32 ;
struct ipw2100_priv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IPW_ORD_UCODE_VERSION ; 
 scalar_t__ FUNC0 (struct ipw2100_priv*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC1 (char*,size_t,char*,int) ; 

__attribute__((used)) static int FUNC2(struct ipw2100_priv *priv, char *buf,
				    size_t max)
{
	u32 ver;
	u32 len = sizeof(ver);
	/* microcode version is a 32 bit integer */
	if (FUNC0(priv, IPW_ORD_UCODE_VERSION, &ver, &len))
		return -EIO;
	return FUNC1(buf, max, "%08X", ver);
}