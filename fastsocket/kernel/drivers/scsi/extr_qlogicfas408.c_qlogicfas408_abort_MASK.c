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
struct scsi_cmnd {int dummy; } ;
struct qlogicfas408_priv {int qabort; } ;

/* Variables and functions */
 int SUCCESS ; 
 struct qlogicfas408_priv* FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlogicfas408_priv*) ; 

int FUNC2(struct scsi_cmnd *cmd)
{
	struct qlogicfas408_priv *priv = FUNC0(cmd);
	priv->qabort = 1;
	FUNC1(priv);
	return SUCCESS;
}