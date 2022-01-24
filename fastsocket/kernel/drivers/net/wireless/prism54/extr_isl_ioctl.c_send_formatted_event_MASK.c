#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* pointer; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct obj_mlme {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ndev; } ;
typedef  TYPE_2__ islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IWEVCUSTOM ; 
 int /*<<< orphan*/  IW_CUSTOM_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char const*,struct obj_mlme const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,char*) ; 

__attribute__((used)) static void
FUNC4(islpci_private *priv, const char *str,
		     const struct obj_mlme *mlme, int error)
{
	union iwreq_data wrqu;
	char *memptr;

	memptr = FUNC2(IW_CUSTOM_MAX, GFP_KERNEL);
	if (!memptr)
		return;
	wrqu.data.pointer = memptr;
	wrqu.data.length = 0;
	FUNC0(priv, memptr, str, mlme, &wrqu.data.length,
		     error);
	FUNC3(priv->ndev, IWEVCUSTOM, &wrqu, memptr);
	FUNC1(memptr);
}