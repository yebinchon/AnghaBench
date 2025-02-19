
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_13__ {int * vaddr; int sglen; int sglist; } ;
struct TYPE_10__ {unsigned int blocks; unsigned int blksize; unsigned int bufsize; TYPE_4__ dma; int pt; } ;
struct saa7134_dev {TYPE_1__ dmasound; TYPE_7__* pci; } ;
struct TYPE_12__ {struct saa7134_dev* dev; } ;
typedef TYPE_3__ snd_card_saa7134_t ;
struct TYPE_14__ {int dev; } ;
struct TYPE_11__ {unsigned int dma_bytes; scalar_t__ dma_addr; int * dma_area; } ;


 int EINVAL ;
 int dsp_buffer_free (struct saa7134_dev*) ;
 int dsp_buffer_init (struct saa7134_dev*) ;
 unsigned int params_period_bytes (struct snd_pcm_hw_params*) ;
 unsigned int params_periods (struct snd_pcm_hw_params*) ;
 int saa7134_pgtable_alloc (TYPE_7__*,int *) ;
 int saa7134_pgtable_build (TYPE_7__*,int *,int ,int ,int ) ;
 int saa7134_pgtable_free (TYPE_7__*,int *) ;
 TYPE_3__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int videobuf_dma_map (int *,TYPE_4__*) ;
 int videobuf_dma_unmap (int *,TYPE_4__*) ;

__attribute__((used)) static int snd_card_saa7134_hw_params(struct snd_pcm_substream * substream,
          struct snd_pcm_hw_params * hw_params)
{
 snd_card_saa7134_t *saa7134 = snd_pcm_substream_chip(substream);
 struct saa7134_dev *dev;
 unsigned int period_size, periods;
 int err;

 period_size = params_period_bytes(hw_params);
 periods = params_periods(hw_params);

 if (period_size < 0x100 || period_size > 0x10000)
  return -EINVAL;
 if (periods < 4)
  return -EINVAL;
 if (period_size * periods > 1024 * 1024)
  return -EINVAL;

 dev = saa7134->dev;

 if (dev->dmasound.blocks == periods &&
     dev->dmasound.blksize == period_size)
  return 0;


 if (substream->runtime->dma_area) {
  saa7134_pgtable_free(dev->pci, &dev->dmasound.pt);
  videobuf_dma_unmap(&dev->pci->dev, &dev->dmasound.dma);
  dsp_buffer_free(dev);
  substream->runtime->dma_area = ((void*)0);
 }
 dev->dmasound.blocks = periods;
 dev->dmasound.blksize = period_size;
 dev->dmasound.bufsize = period_size * periods;

 err = dsp_buffer_init(dev);
 if (0 != err) {
  dev->dmasound.blocks = 0;
  dev->dmasound.blksize = 0;
  dev->dmasound.bufsize = 0;
  return err;
 }

 if (0 != (err = videobuf_dma_map(&dev->pci->dev, &dev->dmasound.dma))) {
  dsp_buffer_free(dev);
  return err;
 }
 if (0 != (err = saa7134_pgtable_alloc(dev->pci,&dev->dmasound.pt))) {
  videobuf_dma_unmap(&dev->pci->dev, &dev->dmasound.dma);
  dsp_buffer_free(dev);
  return err;
 }
 if (0 != (err = saa7134_pgtable_build(dev->pci,&dev->dmasound.pt,
      dev->dmasound.dma.sglist,
      dev->dmasound.dma.sglen,
      0))) {
  saa7134_pgtable_free(dev->pci, &dev->dmasound.pt);
  videobuf_dma_unmap(&dev->pci->dev, &dev->dmasound.dma);
  dsp_buffer_free(dev);
  return err;
 }





 substream->runtime->dma_area = dev->dmasound.dma.vaddr;
 substream->runtime->dma_bytes = dev->dmasound.bufsize;
 substream->runtime->dma_addr = 0;

 return 0;

}
