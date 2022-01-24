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
struct mesh_state {int /*<<< orphan*/  dma_cmd_bus; int /*<<< orphan*/  dma_cmd_space; int /*<<< orphan*/  dma_cmd_size; int /*<<< orphan*/  dma; int /*<<< orphan*/  mesh; int /*<<< orphan*/  meshintr; struct Scsi_Host* host; } ;
struct macio_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mesh_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct mesh_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct macio_dev *mdev)
{
	struct mesh_state *ms = (struct mesh_state *)FUNC2(mdev);
	struct Scsi_Host *mesh_host = ms->host;

	FUNC8(mesh_host);

	FUNC0(ms->meshintr, ms);

	/* Reset scsi bus */
	FUNC5(mdev);

	/* Shut down chip & termination */
	FUNC9(ms, 0);

	/* Unmap registers & dma controller */
	FUNC1(ms->mesh);
       	FUNC1(ms->dma);

	/* Free DMA commands memory */
	FUNC6(FUNC3(mdev), ms->dma_cmd_size,
			    ms->dma_cmd_space, ms->dma_cmd_bus);

	/* Release memory resources */
	FUNC4(mdev);

	FUNC7(mesh_host);

	return 0;
}