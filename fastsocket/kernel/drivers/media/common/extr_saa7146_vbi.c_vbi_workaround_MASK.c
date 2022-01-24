#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct saa7146_vv {int /*<<< orphan*/  vbi_wq; } ;
struct TYPE_7__ {int dma_handle; } ;
struct saa7146_dev {int /*<<< orphan*/  pci; TYPE_2__ d_rps1; TYPE_1__* ext_vv_data; struct saa7146_vv* vv_data; } ;
typedef  int dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int BASE_EVEN3 ; 
 int BASE_ODD3 ; 
 int BASE_PAGE3 ; 
 int BRS_CTRL ; 
 int CMD_E_FID_B ; 
 int CMD_INTERRUPT ; 
 int CMD_OAN ; 
 int CMD_O_FID_B ; 
 int CMD_PAUSE ; 
 int CMD_SIG1 ; 
 int CMD_STOP ; 
 int CMD_UPLOAD ; 
 int CMD_WR_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int EINTR ; 
 int ENOMEM ; 
 int MASK_04 ; 
 int MASK_08 ; 
 int MASK_10 ; 
 int MASK_13 ; 
 int MASK_15 ; 
 int MASK_19 ; 
 int MASK_20 ; 
 int /*<<< orphan*/  MASK_28 ; 
 int MASK_29 ; 
 int MASK_31 ; 
 int MC1 ; 
 int MC2 ; 
 int NUM_LINE_BYTE3 ; 
 int PITCH3 ; 
 int PROT_ADDR3 ; 
 int RPS_ADDR1 ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int SAA7146_USE_PORT_B_FOR_VBI ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct saa7146_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int vbi_pixel_to_capture ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC14(struct saa7146_dev *dev)
{
	struct saa7146_vv *vv = dev->vv_data;

	u32          *cpu;
	dma_addr_t   dma_addr;

	int count = 0;
	int i;

	FUNC2(wait, current);

	FUNC1(("dev:%p\n",dev));

	/* once again, a bug in the saa7146: the brs acquisition
	   is buggy and especially the BXO-counter does not work
	   as specified. there is this workaround, but please
	   don't let me explain it. ;-) */

	cpu = FUNC7(dev->pci, 4096, &dma_addr);
	if (NULL == cpu)
		return -ENOMEM;

	/* setup some basic programming, just for the workaround */
	FUNC11(dev, BASE_EVEN3,	dma_addr);
	FUNC11(dev, BASE_ODD3,	dma_addr+vbi_pixel_to_capture);
	FUNC11(dev, PROT_ADDR3,	dma_addr+4096);
	FUNC11(dev, PITCH3,	vbi_pixel_to_capture);
	FUNC11(dev, BASE_PAGE3,	0x0);
	FUNC11(dev, NUM_LINE_BYTE3, (2<<16)|((vbi_pixel_to_capture)<<0));
	FUNC11(dev, MC2, MASK_04|MASK_20);

	/* load brs-control register */
	FUNC5(CMD_WR_REG | (1 << 8) | (BRS_CTRL/4));
	/* BXO = 1h, BRS to outbound */
	FUNC5(0xc000008c);
	/* wait for vbi_a or vbi_b*/
	if ( 0 != (SAA7146_USE_PORT_B_FOR_VBI & dev->ext_vv_data->flags)) {
		FUNC0(("...using port b\n"));
		FUNC5(CMD_PAUSE | CMD_OAN | CMD_SIG1 | CMD_E_FID_B);
		FUNC5(CMD_PAUSE | CMD_OAN | CMD_SIG1 | CMD_O_FID_B);
/*
		WRITE_RPS1(CMD_PAUSE | MASK_09);
*/
	} else {
		FUNC0(("...using port a\n"));
		FUNC5(CMD_PAUSE | MASK_10);
	}
	/* upload brs */
	FUNC5(CMD_UPLOAD | MASK_08);
	/* load brs-control register */
	FUNC5(CMD_WR_REG | (1 << 8) | (BRS_CTRL/4));
	/* BYO = 1, BXO = NQBIL (=1728 for PAL, for NTSC this is 858*2) - NumByte3 (=1440) = 288 */
	FUNC5(((1728-(vbi_pixel_to_capture)) << 7) | MASK_19);
	/* wait for brs_done */
	FUNC5(CMD_PAUSE | MASK_08);
	/* upload brs */
	FUNC5(CMD_UPLOAD | MASK_08);
	/* load video-dma3 NumLines3 and NumBytes3 */
	FUNC5(CMD_WR_REG | (1 << 8) | (NUM_LINE_BYTE3/4));
	/* dev->vbi_count*2 lines, 720 pixel (= 1440 Bytes) */
	FUNC5((2 << 16) | (vbi_pixel_to_capture));
	/* load brs-control register */
	FUNC5(CMD_WR_REG | (1 << 8) | (BRS_CTRL/4));
	/* Set BRS right: note: this is an experimental value for BXO (=> PAL!) */
	FUNC5((540 << 7) | (5 << 19));  // 5 == vbi_start
	/* wait for brs_done */
	FUNC5(CMD_PAUSE | MASK_08);
	/* upload brs and video-dma3*/
	FUNC5(CMD_UPLOAD | MASK_08 | MASK_04);
	/* load mc2 register: enable dma3 */
	FUNC5(CMD_WR_REG | (1 << 8) | (MC1/4));
	FUNC5(MASK_20 | MASK_04);
	/* generate interrupt */
	FUNC5(CMD_INTERRUPT);
	/* stop rps1 */
	FUNC5(CMD_STOP);

	/* we have to do the workaround twice to be sure that
	   everything is ok */
	for(i = 0; i < 2; i++) {

		/* indicate to the irq handler that we do the workaround */
		FUNC11(dev, MC2, MASK_31|MASK_15);

		FUNC11(dev, NUM_LINE_BYTE3, (1<<16)|(2<<0));
		FUNC11(dev, MC2, MASK_04|MASK_20);

		/* enable rps1 irqs */
		FUNC4(dev,MASK_28);

		/* prepare to wait to be woken up by the irq-handler */
		FUNC6(&vv->vbi_wq, &wait);
		current->state = TASK_INTERRUPTIBLE;

		/* start rps1 to enable workaround */
		FUNC11(dev, RPS_ADDR1, dev->d_rps1.dma_handle);
		FUNC11(dev, MC1, (MASK_13 | MASK_29));

		FUNC12();

		FUNC1(("brs bug workaround %d/1.\n",i));

		FUNC9(&vv->vbi_wq, &wait);
		current->state = TASK_RUNNING;

		/* disable rps1 irqs */
		FUNC3(dev,MASK_28);

		/* stop video-dma3 */
		FUNC11(dev, MC1, MASK_20);

		if(FUNC13(current)) {

			FUNC1(("aborted (rps:0x%08x).\n",FUNC10(dev,RPS_ADDR1)));

			/* stop rps1 for sure */
			FUNC11(dev, MC1, MASK_29);

			FUNC8(dev->pci, 4096, cpu, dma_addr);
			return -EINTR;
		}
	}

	FUNC8(dev->pci, 4096, cpu, dma_addr);
	return 0;
}