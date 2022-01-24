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
struct scsi_host_template {int this_id; int /*<<< orphan*/  name; } ;
struct qlogicfas408_priv {int qlirq; int qbase; int qinitid; int /*<<< orphan*/  qinfo; int /*<<< orphan*/  int_type; struct Scsi_Host* shost; } ;
struct pcmcia_device {int dummy; } ;
struct Scsi_Host {int io_port; int n_io_port; int dma_channel; int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_TYPE ; 
 int QL_TURBO_PDMA ; 
 int /*<<< orphan*/  FUNC0 (int,struct Scsi_Host*) ; 
 struct qlogicfas408_priv* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  qlogic_name ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlogicfas408_ihandl ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 scalar_t__ FUNC5 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC6 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static struct Scsi_Host *FUNC10(struct scsi_host_template *host,
				struct pcmcia_device *link, int qbase, int qlirq)
{
	int qltyp;		/* type of chip */
	int qinitid;
	struct Scsi_Host *shost;	/* registered host structure */
	struct qlogicfas408_priv *priv;

	qltyp = FUNC2(qbase, INT_TYPE);
	qinitid = host->this_id;
	if (qinitid < 0)
		qinitid = 7;	/* if no ID, use 7 */

	FUNC3(qbase, qinitid, INT_TYPE);

	host->name = qlogic_name;
	shost = FUNC6(host, sizeof(struct qlogicfas408_priv));
	if (!shost)
		goto err;
	shost->io_port = qbase;
	shost->n_io_port = 16;
	shost->dma_channel = -1;
	if (qlirq != -1)
		shost->irq = qlirq;

	priv = FUNC1(shost);
	priv->qlirq = qlirq;
	priv->qbase = qbase;
	priv->qinitid = qinitid;
	priv->shost = shost;
	priv->int_type = INT_TYPE;					

	if (FUNC4(qlirq, qlogicfas408_ihandl, 0, qlogic_name, shost))
		goto free_scsi_host;

	FUNC9(priv->qinfo,
		"Qlogicfas Driver version 0.46, chip %02X at %03X, IRQ %d, TPdma:%d",
		qltyp, qbase, qlirq, QL_TURBO_PDMA);

	if (FUNC5(shost, NULL))
		goto free_interrupt;

	FUNC8(shost);

	return shost;

free_interrupt:
	FUNC0(qlirq, shost);

free_scsi_host:
	FUNC7(shost);
	
err:
	return NULL;
}