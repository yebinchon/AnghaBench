
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int pdev; } ;
typedef int dma_addr_t ;
typedef void* __le32 ;
struct TYPE_2__ {int * IMRx; int * OMRx; } ;


 int COMMAND_POST_RESULTS ;
 int KERNEL_PANIC ;
 int KERNEL_UP_AND_RUNNING ;
 TYPE_1__ MUnit ;
 int SELF_TEST_FAILED ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ likely (int) ;
 int memset (char*,int ,int) ;
 void* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,...) ;
 int rx_readl (struct aac_dev*,int ) ;
 int rx_sync_cmd (struct aac_dev*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int rx_writel (struct aac_dev*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aac_rx_check_health(struct aac_dev *dev)
{
 u32 status = rx_readl(dev, MUnit.OMRx[0]);




 if (unlikely(status & SELF_TEST_FAILED))
  return -1;



 if (unlikely(status & KERNEL_PANIC)) {
  char * buffer;
  struct POSTSTATUS {
   __le32 Post_Command;
   __le32 Post_Address;
  } * post;
  dma_addr_t paddr, baddr;
  int ret;

  if (likely((status & 0xFF000000L) == 0xBC000000L))
   return (status >> 16) & 0xFF;
  buffer = pci_alloc_consistent(dev->pdev, 512, &baddr);
  ret = -2;
  if (unlikely(buffer == ((void*)0)))
   return ret;
  post = pci_alloc_consistent(dev->pdev,
    sizeof(struct POSTSTATUS), &paddr);
  if (unlikely(post == ((void*)0))) {
   pci_free_consistent(dev->pdev, 512, buffer, baddr);
   return ret;
  }
  memset(buffer, 0, 512);
  post->Post_Command = cpu_to_le32(COMMAND_POST_RESULTS);
  post->Post_Address = cpu_to_le32(baddr);
  rx_writel(dev, MUnit.IMRx[0], paddr);
  rx_sync_cmd(dev, COMMAND_POST_RESULTS, baddr, 0, 0, 0, 0, 0,
    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  pci_free_consistent(dev->pdev, sizeof(struct POSTSTATUS),
    post, paddr);
  if (likely((buffer[0] == '0') && ((buffer[1] == 'x') || (buffer[1] == 'X')))) {
   ret = (buffer[2] <= '9') ? (buffer[2] - '0') : (buffer[2] - 'A' + 10);
   ret <<= 4;
   ret += (buffer[3] <= '9') ? (buffer[3] - '0') : (buffer[3] - 'A' + 10);
  }
  pci_free_consistent(dev->pdev, 512, buffer, baddr);
  return ret;
 }



 if (unlikely(!(status & KERNEL_UP_AND_RUNNING)))
  return -3;



 return 0;
}
