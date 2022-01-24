#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* kilobytes; int cardtype; int i2c_clock_period; int /*<<< orphan*/  newi2c; int /*<<< orphan*/  radio; int /*<<< orphan*/  tuner; } ;
struct ivtv {size_t instance; scalar_t__ std; int has_cx23415; TYPE_2__* card; int /*<<< orphan*/  card_i2c; int /*<<< orphan*/  card_name; int /*<<< orphan*/  v4l2_cap; TYPE_3__* pdev; TYPE_1__ options; } ;
struct TYPE_8__ {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
struct TYPE_7__ {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; int /*<<< orphan*/  vendor; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c; int /*<<< orphan*/  name; int /*<<< orphan*/  v4l2_capabilities; TYPE_4__* pci_list; } ;

/* Variables and functions */
 int IVTV_CARD_PVR_150 ; 
 int IVTV_CARD_PVR_350 ; 
 size_t IVTV_DEC_STREAM_TYPE_MPG ; 
 size_t IVTV_DEC_STREAM_TYPE_VBI ; 
 size_t IVTV_DEC_STREAM_TYPE_YUV ; 
 int IVTV_DEFAULT_I2C_CLOCK_PERIOD ; 
 size_t IVTV_ENC_STREAM_TYPE_MPG ; 
 size_t IVTV_ENC_STREAM_TYPE_PCM ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 size_t IVTV_ENC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 scalar_t__ IVTV_PCI_ID_HAUPPAUGE ; 
 scalar_t__ IVTV_PCI_ID_HAUPPAUGE_ALT1 ; 
 scalar_t__ IVTV_PCI_ID_HAUPPAUGE_ALT2 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ PCI_DEVICE_ID_IVTV15 ; 
 int V4L2_STD_ALL ; 
 int V4L2_STD_MN ; 
 int* cardtype ; 
 int dec_mpg_buffers ; 
 int dec_vbi_buffers ; 
 int dec_yuv_buffers ; 
 int enc_mpg_buffers ; 
 int enc_pcm_buffers ; 
 int enc_vbi_buffers ; 
 int enc_yuv_buffers ; 
 int* i2c_clock_period ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  newi2c ; 
 int /*<<< orphan*/ * radio ; 
 int /*<<< orphan*/ * tuner ; 
 int tunertype ; 

__attribute__((used)) static void FUNC5(struct ivtv *itv)
{
	const char *chipname;
	int i, j;

	itv->options.kilobytes[IVTV_ENC_STREAM_TYPE_MPG] = enc_mpg_buffers * 1024;
	itv->options.kilobytes[IVTV_ENC_STREAM_TYPE_YUV] = enc_yuv_buffers * 1024;
	itv->options.kilobytes[IVTV_ENC_STREAM_TYPE_VBI] = enc_vbi_buffers * 1024;
	itv->options.kilobytes[IVTV_ENC_STREAM_TYPE_PCM] = enc_pcm_buffers;
	itv->options.kilobytes[IVTV_DEC_STREAM_TYPE_MPG] = dec_mpg_buffers * 1024;
	itv->options.kilobytes[IVTV_DEC_STREAM_TYPE_YUV] = dec_yuv_buffers * 1024;
	itv->options.kilobytes[IVTV_DEC_STREAM_TYPE_VBI] = dec_vbi_buffers;
	itv->options.cardtype = cardtype[itv->instance];
	itv->options.tuner = tuner[itv->instance];
	itv->options.radio = radio[itv->instance];

	itv->options.i2c_clock_period = i2c_clock_period[itv->instance];
	if (itv->options.i2c_clock_period == -1)
		itv->options.i2c_clock_period = IVTV_DEFAULT_I2C_CLOCK_PERIOD;
	else if (itv->options.i2c_clock_period < 10)
		itv->options.i2c_clock_period = 10;
	else if (itv->options.i2c_clock_period > 4500)
		itv->options.i2c_clock_period = 4500;

	itv->options.newi2c = newi2c;
	if (tunertype < -1 || tunertype > 1) {
		FUNC2("Invalid tunertype argument, will autodetect instead\n");
		tunertype = -1;
	}
	itv->std = FUNC4(itv);
	if (itv->std == 0 && tunertype >= 0)
		itv->std = tunertype ? V4L2_STD_MN : (V4L2_STD_ALL & ~V4L2_STD_MN);
	itv->has_cx23415 = (itv->pdev->device == PCI_DEVICE_ID_IVTV15);
	chipname = itv->has_cx23415 ? "cx23415" : "cx23416";
	if (itv->options.cardtype == -1) {
		FUNC1("Ignore card (detected %s based chip)\n", chipname);
		return;
	}
	if ((itv->card = FUNC3(itv->options.cardtype - 1))) {
		FUNC1("User specified %s card (detected %s based chip)\n",
				itv->card->name, chipname);
	} else if (itv->options.cardtype != 0) {
		FUNC0("Unknown user specified type, trying to autodetect card\n");
	}
	if (itv->card == NULL) {
		if (itv->pdev->subsystem_vendor == IVTV_PCI_ID_HAUPPAUGE ||
		    itv->pdev->subsystem_vendor == IVTV_PCI_ID_HAUPPAUGE_ALT1 ||
		    itv->pdev->subsystem_vendor == IVTV_PCI_ID_HAUPPAUGE_ALT2) {
			itv->card = FUNC3(itv->has_cx23415 ? IVTV_CARD_PVR_350 : IVTV_CARD_PVR_150);
			FUNC1("Autodetected Hauppauge card (%s based)\n",
					chipname);
		}
	}
	if (itv->card == NULL) {
		for (i = 0; (itv->card = FUNC3(i)); i++) {
			if (itv->card->pci_list == NULL)
				continue;
			for (j = 0; itv->card->pci_list[j].device; j++) {
				if (itv->pdev->device !=
				    itv->card->pci_list[j].device)
					continue;
				if (itv->pdev->subsystem_vendor !=
				    itv->card->pci_list[j].subsystem_vendor)
					continue;
				if (itv->pdev->subsystem_device !=
				    itv->card->pci_list[j].subsystem_device)
					continue;
				FUNC1("Autodetected %s card (%s based)\n",
						itv->card->name, chipname);
				goto done;
			}
		}
	}
done:

	if (itv->card == NULL) {
		itv->card = FUNC3(IVTV_CARD_PVR_150);
		FUNC0("Unknown card: vendor/device: [%04x:%04x]\n",
		     itv->pdev->vendor, itv->pdev->device);
		FUNC0("              subsystem vendor/device: [%04x:%04x]\n",
		     itv->pdev->subsystem_vendor, itv->pdev->subsystem_device);
		FUNC0("              %s based\n", chipname);
		FUNC0("Defaulting to %s card\n", itv->card->name);
		FUNC0("Please mail the vendor/device and subsystem vendor/device IDs and what kind of\n");
		FUNC0("card you have to the ivtv-devel mailinglist (www.ivtvdriver.org)\n");
		FUNC0("Prefix your subject line with [UNKNOWN IVTV CARD].\n");
	}
	itv->v4l2_cap = itv->card->v4l2_capabilities;
	itv->card_name = itv->card->name;
	itv->card_i2c = itv->card->i2c;
}