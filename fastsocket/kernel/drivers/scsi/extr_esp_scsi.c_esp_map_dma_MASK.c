#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int sc_data_direction; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int num_sg; } ;
struct esp_cmd_priv {int tot_residue; TYPE_2__ u; struct scatterlist* cur_sg; scalar_t__ cur_residue; } ;
struct esp {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* map_sg ) (struct esp*,struct scatterlist*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int DMA_NONE ; 
 struct esp_cmd_priv* FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC2 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct esp*,struct scatterlist*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct esp *esp, struct scsi_cmnd *cmd)
{
	struct esp_cmd_priv *spriv = FUNC0(cmd);
	struct scatterlist *sg = FUNC2(cmd);
	int dir = cmd->sc_data_direction;
	int total, i;

	if (dir == DMA_NONE)
		return;

	spriv->u.num_sg = esp->ops->map_sg(esp, sg, FUNC1(cmd), dir);
	spriv->cur_residue = FUNC3(sg);
	spriv->cur_sg = sg;

	total = 0;
	for (i = 0; i < spriv->u.num_sg; i++)
		total += FUNC3(&sg[i]);
	spriv->tot_residue = total;
}