
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* megabytes; int cardtype; int radio; int tuner; } ;
struct cx18 {int* stream_buffers; int* stream_buf_size; size_t instance; TYPE_3__* card; int card_i2c; scalar_t__ card_name; int v4l2_cap; TYPE_2__* pci_dev; TYPE_4__ options; int std; } ;
struct TYPE_7__ {int i2c; scalar_t__ name; int v4l2_capabilities; TYPE_1__* pci_list; } ;
struct TYPE_6__ {scalar_t__ subsystem_vendor; scalar_t__ device; scalar_t__ subsystem_device; int vendor; } ;
struct TYPE_5__ {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;


 int CX18_CARD_HVR_1600_ESMT ;
 int CX18_DEBUG_INFO (char*,int,int,int,int) ;
 size_t CX18_ENC_STREAM_TYPE_IDX ;
 size_t CX18_ENC_STREAM_TYPE_MPG ;
 size_t CX18_ENC_STREAM_TYPE_PCM ;
 size_t CX18_ENC_STREAM_TYPE_RAD ;
 size_t CX18_ENC_STREAM_TYPE_TS ;
 size_t CX18_ENC_STREAM_TYPE_VBI ;
 size_t CX18_ENC_STREAM_TYPE_YUV ;
 int CX18_ERR (char*,...) ;
 int CX18_INFO (char*,...) ;
 int CX18_MAX_STREAMS ;
 scalar_t__ CX18_PCI_ID_HAUPPAUGE ;
 int CX18_UNIT_ENC_IDX_BUFSIZE ;
 int CX18_UNIT_ENC_YUV_BUFSIZE ;
 int* cardtype ;
 void* cx18_get_card (int) ;
 int cx18_parse_std (struct cx18*) ;
 int enc_idx_buffers ;
 int enc_idx_bufs ;
 int enc_idx_bufsize ;
 int enc_mpg_buffers ;
 int enc_mpg_bufs ;
 int enc_mpg_bufsize ;
 int enc_pcm_buffers ;
 int enc_pcm_bufs ;
 int enc_pcm_bufsize ;
 int enc_ts_buffers ;
 int enc_ts_bufs ;
 int enc_ts_bufsize ;
 int enc_vbi_buffers ;
 int enc_vbi_bufs ;
 int enc_yuv_buffers ;
 int enc_yuv_bufs ;
 int enc_yuv_bufsize ;
 int * radio ;
 int * tuner ;
 int vbi_active_samples ;

__attribute__((used)) static void cx18_process_options(struct cx18 *cx)
{
 int i, j;

 cx->options.megabytes[CX18_ENC_STREAM_TYPE_TS] = enc_ts_buffers;
 cx->options.megabytes[CX18_ENC_STREAM_TYPE_MPG] = enc_mpg_buffers;
 cx->options.megabytes[CX18_ENC_STREAM_TYPE_IDX] = enc_idx_buffers;
 cx->options.megabytes[CX18_ENC_STREAM_TYPE_YUV] = enc_yuv_buffers;
 cx->options.megabytes[CX18_ENC_STREAM_TYPE_VBI] = enc_vbi_buffers;
 cx->options.megabytes[CX18_ENC_STREAM_TYPE_PCM] = enc_pcm_buffers;
 cx->options.megabytes[CX18_ENC_STREAM_TYPE_RAD] = 0;

 cx->stream_buffers[CX18_ENC_STREAM_TYPE_TS] = enc_ts_bufs;
 cx->stream_buffers[CX18_ENC_STREAM_TYPE_MPG] = enc_mpg_bufs;
 cx->stream_buffers[CX18_ENC_STREAM_TYPE_IDX] = enc_idx_bufs;
 cx->stream_buffers[CX18_ENC_STREAM_TYPE_YUV] = enc_yuv_bufs;
 cx->stream_buffers[CX18_ENC_STREAM_TYPE_VBI] = enc_vbi_bufs;
 cx->stream_buffers[CX18_ENC_STREAM_TYPE_PCM] = enc_pcm_bufs;
 cx->stream_buffers[CX18_ENC_STREAM_TYPE_RAD] = 0;

 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_TS] = enc_ts_bufsize;
 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_MPG] = enc_mpg_bufsize;
 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_IDX] = enc_idx_bufsize;
 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_YUV] = enc_yuv_bufsize;
 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_VBI] = vbi_active_samples * 36;
 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_PCM] = enc_pcm_bufsize;
 cx->stream_buf_size[CX18_ENC_STREAM_TYPE_RAD] = 0;


 for (i = 0; i < CX18_MAX_STREAMS; i++) {
  if (cx->stream_buffers[i] == 0 ||
      cx->options.megabytes[i] <= 0 ||
      cx->stream_buf_size[i] <= 0) {
   cx->options.megabytes[i] = 0;
   cx->stream_buffers[i] = 0;
   cx->stream_buf_size[i] = 0;
   continue;
  }
  if (i == CX18_ENC_STREAM_TYPE_YUV) {
   cx->stream_buf_size[i] *= 1024;
   cx->stream_buf_size[i] -=
      (cx->stream_buf_size[i] % CX18_UNIT_ENC_YUV_BUFSIZE);

   if (cx->stream_buf_size[i] < CX18_UNIT_ENC_YUV_BUFSIZE)
    cx->stream_buf_size[i] =
      CX18_UNIT_ENC_YUV_BUFSIZE;
  } else if (i == CX18_ENC_STREAM_TYPE_IDX) {
   cx->stream_buf_size[i] *= 1024;
   cx->stream_buf_size[i] -=
      (cx->stream_buf_size[i] % CX18_UNIT_ENC_IDX_BUFSIZE);

   if (cx->stream_buf_size[i] < CX18_UNIT_ENC_IDX_BUFSIZE)
    cx->stream_buf_size[i] =
      CX18_UNIT_ENC_IDX_BUFSIZE;
  }






  if (i == CX18_ENC_STREAM_TYPE_VBI ||
      i == CX18_ENC_STREAM_TYPE_YUV ||
      i == CX18_ENC_STREAM_TYPE_IDX) {
   if (cx->stream_buffers[i] < 0) {
    cx->stream_buffers[i] =
     cx->options.megabytes[i] * 1024 * 1024
     / cx->stream_buf_size[i];
   } else {

    cx->options.megabytes[i] =
     cx->stream_buffers[i]
     * cx->stream_buf_size[i]/(1024 * 1024);
   }
  } else {

   if (cx->stream_buffers[i] < 0) {
    cx->stream_buffers[i] =
      cx->options.megabytes[i] * 1024
      / cx->stream_buf_size[i];
   } else {

    cx->options.megabytes[i] =
      cx->stream_buffers[i]
      * cx->stream_buf_size[i] / 1024;
   }

   cx->stream_buf_size[i] *= 1024;
  }
  CX18_DEBUG_INFO("Stream type %d options: %d MB, %d buffers, "
    "%d bytes\n", i, cx->options.megabytes[i],
    cx->stream_buffers[i], cx->stream_buf_size[i]);
 }

 cx->options.cardtype = cardtype[cx->instance];
 cx->options.tuner = tuner[cx->instance];
 cx->options.radio = radio[cx->instance];

 cx->std = cx18_parse_std(cx);
 if (cx->options.cardtype == -1) {
  CX18_INFO("Ignore card\n");
  return;
 }
 cx->card = cx18_get_card(cx->options.cardtype - 1);
 if (cx->card)
  CX18_INFO("User specified %s card\n", cx->card->name);
 else if (cx->options.cardtype != 0)
  CX18_ERR("Unknown user specified type, trying to autodetect card\n");
 if (cx->card == ((void*)0)) {
  if (cx->pci_dev->subsystem_vendor == CX18_PCI_ID_HAUPPAUGE) {
   cx->card = cx18_get_card(CX18_CARD_HVR_1600_ESMT);
   CX18_INFO("Autodetected Hauppauge card\n");
  }
 }
 if (cx->card == ((void*)0)) {
  for (i = 0; (cx->card = cx18_get_card(i)); i++) {
   if (cx->card->pci_list == ((void*)0))
    continue;
   for (j = 0; cx->card->pci_list[j].device; j++) {
    if (cx->pci_dev->device !=
        cx->card->pci_list[j].device)
     continue;
    if (cx->pci_dev->subsystem_vendor !=
        cx->card->pci_list[j].subsystem_vendor)
     continue;
    if (cx->pci_dev->subsystem_device !=
        cx->card->pci_list[j].subsystem_device)
     continue;
    CX18_INFO("Autodetected %s card\n", cx->card->name);
    goto done;
   }
  }
 }
done:

 if (cx->card == ((void*)0)) {
  cx->card = cx18_get_card(CX18_CARD_HVR_1600_ESMT);
  CX18_ERR("Unknown card: vendor/device: [%04x:%04x]\n",
    cx->pci_dev->vendor, cx->pci_dev->device);
  CX18_ERR("              subsystem vendor/device: [%04x:%04x]\n",
    cx->pci_dev->subsystem_vendor,
    cx->pci_dev->subsystem_device);
  CX18_ERR("Defaulting to %s card\n", cx->card->name);
  CX18_ERR("Please mail the vendor/device and subsystem vendor/device IDs and what kind of\n");
  CX18_ERR("card you have to the ivtv-devel mailinglist (www.ivtvdriver.org)\n");
  CX18_ERR("Prefix your subject line with [UNKNOWN CX18 CARD].\n");
 }
 cx->v4l2_cap = cx->card->v4l2_capabilities;
 cx->card_name = cx->card->name;
 cx->card_i2c = cx->card->i2c;
}
