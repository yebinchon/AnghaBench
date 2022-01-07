
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct tmComResBusInfo {scalar_t__ m_dwSetWritePos; scalar_t__ m_dwGetReadPos; scalar_t__ m_dwGetWritePos; scalar_t__ m_dwSetReadPos; void* m_dwSizeGetRing; int * m_pdwGetRing; void* m_dwSizeSetRing; int * m_pdwSetRing; int m_wMaxReqSize; int Type; int lock; } ;
struct TYPE_4__ {int BARLocation; } ;
struct TYPE_3__ {int ResponseRing; int CommandRing; } ;
struct saa7164_dev {TYPE_2__ intfdesc; TYPE_1__ busdesc; scalar_t__ bmmio; struct tmComResBusInfo bus; } ;


 void* SAA_DEVICE_BUFFERBLOCKSIZE ;
 int SAA_DEVICE_MAXREQUESTSIZE ;
 int TYPE_BUS_PCIe ;
 int mutex_init (int *) ;

int saa7164_bus_setup(struct saa7164_dev *dev)
{
 struct tmComResBusInfo *b = &dev->bus;

 mutex_init(&b->lock);

 b->Type = TYPE_BUS_PCIe;
 b->m_wMaxReqSize = SAA_DEVICE_MAXREQUESTSIZE;

 b->m_pdwSetRing = (u8 *)(dev->bmmio +
  ((u32)dev->busdesc.CommandRing));

 b->m_dwSizeSetRing = SAA_DEVICE_BUFFERBLOCKSIZE;

 b->m_pdwGetRing = (u8 *)(dev->bmmio +
  ((u32)dev->busdesc.ResponseRing));

 b->m_dwSizeGetRing = SAA_DEVICE_BUFFERBLOCKSIZE;

 b->m_dwSetWritePos = ((u32)dev->intfdesc.BARLocation) +
  (2 * sizeof(u64));
 b->m_dwSetReadPos = b->m_dwSetWritePos + (1 * sizeof(u32));

 b->m_dwGetWritePos = b->m_dwSetWritePos + (2 * sizeof(u32));
 b->m_dwGetReadPos = b->m_dwSetWritePos + (3 * sizeof(u32));

 return 0;
}
