
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ src_h; scalar_t__ src_w; } ;
struct TYPE_3__ {scalar_t__ src_h; scalar_t__ src_w; } ;
struct yuv_playback_info {int reg_2898; int reg_2834; int reg_2838; int reg_283c; int reg_2840; int reg_2844; int reg_2848; int reg_2854; int reg_285c; int reg_2864; int reg_2870; int reg_2874; int reg_2890; int reg_289c; int reg_2918; int reg_291c; int reg_2920; int reg_2924; int reg_2928; int reg_292c; int reg_2930; int reg_2934; int reg_2938; int reg_293c; int reg_2940; int reg_2944; int reg_2948; int reg_294c; int reg_2950; int reg_2954; int reg_2958; int reg_295c; int reg_2960; int reg_2964; int reg_2968; int reg_296c; int reg_2970; TYPE_2__ old_frame_info_args; TYPE_1__ old_frame_info; int blanking_dmaptr; int * blanking_ptr; int next_fill_frame; int next_dma_frame; scalar_t__ running; } ;
struct ivtv {int i_flags; int pdev; int vsync_waitq; struct yuv_playback_info yuv_info; } ;


 int IVTV_DEBUG_YUV (char*) ;
 int IVTV_F_I_DECODING_YUV ;
 int PCI_DMA_TODEVICE ;
 int atomic_set (int *,int) ;
 int clear_bit (int ,int *) ;
 int ivtv_waitq (int *) ;
 int ivtv_yuv_filter (struct ivtv*,int,int,int) ;
 int kfree (int *) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int write_reg (int,int) ;

void ivtv_yuv_close(struct ivtv *itv)
{
 struct yuv_playback_info *yi = &itv->yuv_info;
 int h_filter, v_filter_1, v_filter_2;

 IVTV_DEBUG_YUV("ivtv_yuv_close\n");
 ivtv_waitq(&itv->vsync_waitq);

 yi->running = 0;
 atomic_set(&yi->next_dma_frame, -1);
 atomic_set(&yi->next_fill_frame, 0);






 write_reg(yi->reg_2898 | 0x01000000, 0x2898);

 write_reg(yi->reg_2834, 0x02834);
 write_reg(yi->reg_2838, 0x02838);
 write_reg(yi->reg_283c, 0x0283c);
 write_reg(yi->reg_2840, 0x02840);
 write_reg(yi->reg_2844, 0x02844);
 write_reg(yi->reg_2848, 0x02848);
 write_reg(yi->reg_2854, 0x02854);
 write_reg(yi->reg_285c, 0x0285c);
 write_reg(yi->reg_2864, 0x02864);
 write_reg(yi->reg_2870, 0x02870);
 write_reg(yi->reg_2874, 0x02874);
 write_reg(yi->reg_2890, 0x02890);
 write_reg(yi->reg_289c, 0x0289c);

 write_reg(yi->reg_2918, 0x02918);
 write_reg(yi->reg_291c, 0x0291c);
 write_reg(yi->reg_2920, 0x02920);
 write_reg(yi->reg_2924, 0x02924);
 write_reg(yi->reg_2928, 0x02928);
 write_reg(yi->reg_292c, 0x0292c);
 write_reg(yi->reg_2930, 0x02930);
 write_reg(yi->reg_2934, 0x02934);
 write_reg(yi->reg_2938, 0x02938);
 write_reg(yi->reg_293c, 0x0293c);
 write_reg(yi->reg_2940, 0x02940);
 write_reg(yi->reg_2944, 0x02944);
 write_reg(yi->reg_2948, 0x02948);
 write_reg(yi->reg_294c, 0x0294c);
 write_reg(yi->reg_2950, 0x02950);
 write_reg(yi->reg_2954, 0x02954);
 write_reg(yi->reg_2958, 0x02958);
 write_reg(yi->reg_295c, 0x0295c);
 write_reg(yi->reg_2960, 0x02960);
 write_reg(yi->reg_2964, 0x02964);
 write_reg(yi->reg_2968, 0x02968);
 write_reg(yi->reg_296c, 0x0296c);
 write_reg(yi->reg_2970, 0x02970);




 if ((yi->reg_2834 & 0x0000FFFF) == (yi->reg_2834 >> 16)) {

  h_filter = 0;
 } else {

  h_filter = ((yi->reg_2834 << 16) / (yi->reg_2834 >> 16)) >> 15;
  h_filter = (h_filter >> 1) + (h_filter & 1);

  h_filter += !h_filter;
 }


 if ((yi->reg_2918 & 0x0000FFFF) == (yi->reg_2918 >> 16)) {

  v_filter_1 = 0;
  v_filter_2 = 1;
 } else {

  v_filter_1 = ((yi->reg_2918 << 16) / (yi->reg_2918 >> 16)) >> 15;
  v_filter_1 = (v_filter_1 >> 1) + (v_filter_1 & 1);

  v_filter_1 += !v_filter_1;
  v_filter_2 = v_filter_1;
 }


 ivtv_yuv_filter(itv, h_filter, v_filter_1, v_filter_2);


 write_reg(0, 0x02814);
 write_reg(0, 0x0282c);
 write_reg(0, 0x02904);
 write_reg(0, 0x02910);


 if (yi->blanking_ptr) {
  kfree(yi->blanking_ptr);
  yi->blanking_ptr = ((void*)0);
  pci_unmap_single(itv->pdev, yi->blanking_dmaptr, 720*16, PCI_DMA_TODEVICE);
 }


 yi->old_frame_info.src_w = 0;
 yi->old_frame_info.src_h = 0;
 yi->old_frame_info_args.src_w = 0;
 yi->old_frame_info_args.src_h = 0;


 clear_bit(IVTV_F_I_DECODING_YUV, &itv->i_flags);
}
