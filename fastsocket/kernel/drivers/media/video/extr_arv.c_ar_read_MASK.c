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
struct video_device {int dummy; } ;
struct file {int dummy; } ;
struct ar_device {long frame_bytes; scalar_t__ size; scalar_t__ mode; int line_buff; int line_bytes; int height; unsigned char** frame; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; scalar_t__ start_capture; } ;
typedef  long ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ARDATA32 ; 
 int /*<<< orphan*/  ARVCR1 ; 
 unsigned long ARVCR1_HIEN ; 
 unsigned long ARVCR1_NORMAL ; 
 unsigned long ARVCR1_QVGA ; 
 int /*<<< orphan*/  ARVHCOUNT ; 
 int AR_HEIGHT_VGA ; 
 scalar_t__ AR_MODE_INTERLACE ; 
 scalar_t__ AR_MODE_NORMAL ; 
 scalar_t__ AR_SIZE_QVGA ; 
 scalar_t__ AR_SIZE_VGA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 long EFAULT ; 
 long EINTR ; 
 int /*<<< orphan*/  M32R_DMA0CBCUT_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0CDA_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0CR0_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0CR1_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0CSA_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0RBCUT_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0RDA_PORTL ; 
 int /*<<< orphan*/  M32R_DMA0RSA_PORTL ; 
 int /*<<< orphan*/  M32R_DMAEDET_PORTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC15 (struct file*) ; 
 struct ar_device* FUNC16 (struct video_device*) ; 
 int FUNC17 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 unsigned char* yuv ; 

__attribute__((used)) static ssize_t FUNC19(struct file *file, char *buf, size_t count, loff_t *ppos)
{
	struct video_device *v = FUNC15(file);
	struct ar_device *ar = FUNC16(v);
	long ret = ar->frame_bytes;		/* return read bytes */
	unsigned long arvcr1 = 0;
	unsigned long flags;
	unsigned char *p;
	int h, w;
	unsigned char *py, *pu, *pv;
#if ! USE_INT
	int l;
#endif

	FUNC0(1, "ar_read()\n");

	if (ar->size == AR_SIZE_QVGA)
		arvcr1 |= ARVCR1_QVGA;
	if (ar->mode == AR_MODE_NORMAL)
		arvcr1 |= ARVCR1_NORMAL;

	FUNC11(&ar->lock);

#if USE_INT
	local_irq_save(flags);
	disable_dma();
	ar_outl(0xa1871300, M32R_DMA0CR0_PORTL);
	ar_outl(0x01000000, M32R_DMA0CR1_PORTL);

	/* set AR FIFO address as source(BSEL5) */
	ar_outl(ARDATA32, M32R_DMA0CSA_PORTL);
	ar_outl(ARDATA32, M32R_DMA0RSA_PORTL);
	ar_outl(ar->line_buff, M32R_DMA0CDA_PORTL);	/* destination addr. */
	ar_outl(ar->line_buff, M32R_DMA0RDA_PORTL); 	/* reload address */
	ar_outl(ar->line_bytes, M32R_DMA0CBCUT_PORTL); 	/* byte count (bytes) */
	ar_outl(ar->line_bytes, M32R_DMA0RBCUT_PORTL); 	/* reload count (bytes) */

	/*
	 * Okey , kicks AR LSI to invoke an interrupt
	 */
	ar->start_capture = 0;
	ar_outl(arvcr1 | ARVCR1_HIEN, ARVCR1);
	local_irq_restore(flags);
	/* .... AR interrupts .... */
	interruptible_sleep_on(&ar->wait);
	if (signal_pending(current)) {
		printk("arv: interrupted while get frame data.\n");
		ret = -EINTR;
		goto out_up;
	}
#else	/* ! USE_INT */
	/* polling */
	FUNC2(arvcr1, ARVCR1);
	FUNC6();
	FUNC2(0x8000, M32R_DMAEDET_PORTL);
	FUNC2(0xa0861300, M32R_DMA0CR0_PORTL);
	FUNC2(0x01000000, M32R_DMA0CR1_PORTL);
	FUNC2(ARDATA32, M32R_DMA0CSA_PORTL);
	FUNC2(ARDATA32, M32R_DMA0RSA_PORTL);
	FUNC2(ar->line_bytes, M32R_DMA0CBCUT_PORTL);
	FUNC2(ar->line_bytes, M32R_DMA0RBCUT_PORTL);

	FUNC10(flags);
	while (FUNC1(ARVHCOUNT) != 0)		/* wait for 0 */
		FUNC5();
	if (ar->mode == AR_MODE_INTERLACE && ar->size == AR_SIZE_VGA) {
		for (h = 0; h < ar->height; h++) {
			FUNC18(h);
			if (h < (AR_HEIGHT_VGA/2))
				l = h << 1;
			else
				l = (((h - (AR_HEIGHT_VGA/2)) << 1) + 1);
			FUNC2(FUNC17(ar->frame[l]), M32R_DMA0CDA_PORTL);
			FUNC7();
			while (!(FUNC1(M32R_DMAEDET_PORTL) & 0x8000))
				FUNC5();
			FUNC6();
			FUNC3();
			FUNC2(0xa0861300, M32R_DMA0CR0_PORTL);
		}
	} else {
		for (h = 0; h < ar->height; h++) {
			FUNC18(h);
			FUNC2(FUNC17(ar->frame[h]), M32R_DMA0CDA_PORTL);
			FUNC7();
			while (!(FUNC1(M32R_DMAEDET_PORTL) & 0x8000))
				FUNC5();
			FUNC6();
			FUNC3();
			FUNC2(0xa0861300, M32R_DMA0CR0_PORTL);
		}
	}
	FUNC9(flags);
#endif	/* ! USE_INT */

	/*
	 * convert YUV422 to YUV422P
	 * 	+--------------------+
	 *	|  Y0,Y1,...	     |
	 *	|  ..............Yn  |
	 *	+--------------------+
	 *	|  U0,U1,........Un  |
	 *	+--------------------+
	 *	|  V0,V1,........Vn  |
	 *	+--------------------+
	 */
	py = yuv;
	pu = py + (ar->frame_bytes / 2);
	pv = pu + (ar->frame_bytes / 4);
	for (h = 0; h < ar->height; h++) {
		p = ar->frame[h];
		for (w = 0; w < ar->line_bytes; w += 4) {
			*py++ = *p++;
			*pu++ = *p++;
			*py++ = *p++;
			*pv++ = *p++;
		}
	}
	if (FUNC4(buf, yuv, ar->frame_bytes)) {
		FUNC13("arv: failed while copy_to_user yuv.\n");
		ret = -EFAULT;
		goto out_up;
	}
	FUNC0(1, "ret = %d\n", ret);
out_up:
	FUNC12(&ar->lock);
	return ret;
}