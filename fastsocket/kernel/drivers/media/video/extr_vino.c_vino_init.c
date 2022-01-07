
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vino_settings {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_13__ {int name; } ;
struct TYPE_10__ {void* fifo_thres; int next_4_desc; } ;
struct TYPE_9__ {void* fifo_thres; int next_4_desc; } ;
struct TYPE_12__ {TYPE_3__ b; TYPE_2__ a; scalar_t__ intr_status; scalar_t__ control; } ;
struct TYPE_8__ {int dma; int * dma_cpu; } ;
struct TYPE_11__ {TYPE_1__ dummy_desc_table; scalar_t__ dummy_page; TYPE_6__ v4l2_dev; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int VINO_DESC_FETCH_DELAY ;
 int VINO_DUMMY_DESC_COUNT ;
 void* VINO_FIFO_THRESHOLD_DEFAULT ;
 int * dma_alloc_coherent (int *,int,int *,int) ;
 int dma_map_single (int *,void*,int ,int ) ;
 scalar_t__ get_zeroed_page (int) ;
 TYPE_4__* kzalloc (int,int) ;
 int strlcpy (int ,char*,int) ;
 int udelay (int ) ;
 int v4l2_device_register (int *,TYPE_6__*) ;
 TYPE_5__* vino ;
 TYPE_4__* vino_drvdata ;
 int vino_init_stage ;
 int vino_module_cleanup (int ) ;

__attribute__((used)) static int vino_init(void)
{
 dma_addr_t dma_dummy_address;
 int err;
 int i;

 vino_drvdata = kzalloc(sizeof(struct vino_settings), GFP_KERNEL);
 if (!vino_drvdata) {
  vino_module_cleanup(vino_init_stage);
  return -ENOMEM;
 }
 vino_init_stage++;
 strlcpy(vino_drvdata->v4l2_dev.name, "vino",
   sizeof(vino_drvdata->v4l2_dev.name));
 err = v4l2_device_register(((void*)0), &vino_drvdata->v4l2_dev);
 if (err)
  return err;
 vino_init_stage++;


 vino_drvdata->dummy_page = get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!vino_drvdata->dummy_page) {
  vino_module_cleanup(vino_init_stage);
  return -ENOMEM;
 }
 vino_init_stage++;



 vino_drvdata->dummy_desc_table.dma_cpu =
  dma_alloc_coherent(((void*)0),
  VINO_DUMMY_DESC_COUNT * sizeof(dma_addr_t),
  &vino_drvdata->dummy_desc_table.dma,
  GFP_KERNEL | GFP_DMA);
 if (!vino_drvdata->dummy_desc_table.dma_cpu) {
  vino_module_cleanup(vino_init_stage);
  return -ENOMEM;
 }
 vino_init_stage++;

 dma_dummy_address = dma_map_single(((void*)0),
        (void *)vino_drvdata->dummy_page,
     PAGE_SIZE, DMA_FROM_DEVICE);
 for (i = 0; i < VINO_DUMMY_DESC_COUNT; i++) {
  vino_drvdata->dummy_desc_table.dma_cpu[i] = dma_dummy_address;
 }



 vino->control = 0;
 vino->a.next_4_desc = vino_drvdata->dummy_desc_table.dma;
 vino->b.next_4_desc = vino_drvdata->dummy_desc_table.dma;
 udelay(VINO_DESC_FETCH_DELAY);

 vino->intr_status = 0;

 vino->a.fifo_thres = VINO_FIFO_THRESHOLD_DEFAULT;
 vino->b.fifo_thres = VINO_FIFO_THRESHOLD_DEFAULT;

 return 0;
}
