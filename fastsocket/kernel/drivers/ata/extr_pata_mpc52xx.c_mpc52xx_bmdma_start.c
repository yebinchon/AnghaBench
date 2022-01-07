
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpc52xx_ata_priv {TYPE_2__* dmatsk; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_4__ {int tasknum; } ;
struct TYPE_3__ {struct mpc52xx_ata_priv* private_data; } ;


 int bcom_enable (TYPE_2__*) ;
 int bcom_set_task_auto_start (int ,int ) ;

__attribute__((used)) static void
mpc52xx_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct mpc52xx_ata_priv *priv = ap->host->private_data;

 bcom_set_task_auto_start(priv->dmatsk->tasknum, priv->dmatsk->tasknum);
 bcom_enable(priv->dmatsk);
}
