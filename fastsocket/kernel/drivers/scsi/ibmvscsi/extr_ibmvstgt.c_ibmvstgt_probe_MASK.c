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
struct vio_port {unsigned int liobn; unsigned int riobn; int /*<<< orphan*/  crq_queue; int /*<<< orphan*/  crq_work; struct srp_target* target; struct vio_dev* dma_dev; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct srp_target {int /*<<< orphan*/  dev; struct vio_port* ldata; struct Scsi_Host* shost; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INITIAL_SRP_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRP_MAX_IU_LEN ; 
 int FUNC1 (int /*<<< orphan*/ *,struct srp_target*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  handle_crq ; 
 struct srp_target* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  ibmvstgt_sht ; 
 int /*<<< orphan*/  ibmvstgt_transport_template ; 
 int /*<<< orphan*/  FUNC4 (struct vio_port*) ; 
 struct vio_port* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 int FUNC12 (struct srp_target*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct srp_target*) ; 
 scalar_t__ FUNC14 (struct vio_dev*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC15(struct vio_dev *dev, const struct vio_device_id *id)
{
	struct Scsi_Host *shost;
	struct srp_target *target;
	struct vio_port *vport;
	unsigned int *dma, dma_size;
	int err = -ENOMEM;

	vport = FUNC5(sizeof(struct vio_port), GFP_KERNEL);
	if (!vport)
		return err;
	shost = FUNC7(&ibmvstgt_sht, sizeof(struct srp_target));
	if (!shost)
		goto free_vport;
	shost->transportt = ibmvstgt_transport_template;

	target = FUNC3(shost);
	target->shost = shost;
	vport->dma_dev = dev;
	target->ldata = vport;
	vport->target = target;
	err = FUNC12(target, &dev->dev, INITIAL_SRP_LIMIT,
			       SRP_MAX_IU_LEN);
	if (err)
		goto put_host;

	dma = (unsigned int *) FUNC14(dev, "ibm,my-dma-window",
						 &dma_size);
	if (!dma || dma_size != 40) {
		FUNC2("Couldn't get window property %d\n", dma_size);
		err = -EIO;
		goto free_srp_target;
	}
	vport->liobn = dma[0];
	vport->riobn = dma[5];

	FUNC0(&vport->crq_work, handle_crq);

	err = FUNC6(shost, target->dev);
	if (err)
		goto free_srp_target;

	err = FUNC10(shost);
	if (err)
		goto remove_host;

	err = FUNC1(&vport->crq_queue, target);
	if (err)
		goto free_queue;

	return 0;
free_queue:
	FUNC11(shost);
remove_host:
	FUNC9(shost);
free_srp_target:
	FUNC13(target);
put_host:
	FUNC8(shost);
free_vport:
	FUNC4(vport);
	return err;
}