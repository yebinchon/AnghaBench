#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buff ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ FDFSTrunkFileInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,int*,int) ; 
 int /*<<< orphan*/  g_fdfs_base64_context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(const FDFSTrunkFileInfo *pTrunkFile, char *str)
{
	char buff[sizeof(int) * 3];
	int len;

	FUNC1(pTrunkFile->id, buff);
	FUNC1(pTrunkFile->offset, buff + sizeof(int));
	FUNC1(pTrunkFile->size, buff + sizeof(int) * 2);
	FUNC0(&g_fdfs_base64_context, buff, sizeof(buff), \
			str, &len, false);
}