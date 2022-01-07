
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_7__ {int dma; int pt; } ;
struct saa7134_dev {TYPE_2__ dmasound; TYPE_5__* pci; } ;
struct TYPE_8__ {struct saa7134_dev* dev; } ;
typedef TYPE_3__ snd_card_saa7134_t ;
struct TYPE_9__ {int dev; } ;
struct TYPE_6__ {int * dma_area; } ;


 int dsp_buffer_free (struct saa7134_dev*) ;
 int saa7134_pgtable_free (TYPE_5__*,int *) ;
 TYPE_3__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int videobuf_dma_unmap (int *,int *) ;

__attribute__((used)) static int snd_card_saa7134_hw_free(struct snd_pcm_substream * substream)
{
 snd_card_saa7134_t *saa7134 = snd_pcm_substream_chip(substream);
 struct saa7134_dev *dev;

 dev = saa7134->dev;

 if (substream->runtime->dma_area) {
  saa7134_pgtable_free(dev->pci, &dev->dmasound.pt);
  videobuf_dma_unmap(&dev->pci->dev, &dev->dmasound.dma);
  dsp_buffer_free(dev);
  substream->runtime->dma_area = ((void*)0);
 }

 return 0;
}
