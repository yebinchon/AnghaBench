
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ReceiverFibAddress; } ;
struct TYPE_6__ {void* SenderSize; TYPE_1__ u; void* XferState; void* Size; int StructType; } ;
struct hw_fib {TYPE_3__ header; } ;
struct fib {int hw_fib_pa; TYPE_2__* dev; struct hw_fib* hw_fib_va; } ;
struct aac_fibhdr {int dummy; } ;
struct TYPE_5__ {int max_fib_size; } ;


 int FIB_MAGIC ;
 int FastResponseCapable ;
 int FibEmpty ;
 int FibInitialized ;
 int HostOwned ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int memset (TYPE_3__*,int ,int) ;

void aac_fib_init(struct fib *fibptr)
{
 struct hw_fib *hw_fib = fibptr->hw_fib_va;

 memset(&hw_fib->header, 0, sizeof(struct aac_fibhdr));
 hw_fib->header.StructType = FIB_MAGIC;
 hw_fib->header.Size = cpu_to_le16(fibptr->dev->max_fib_size);
 hw_fib->header.XferState = cpu_to_le32(HostOwned | FibInitialized | FibEmpty | FastResponseCapable);
 hw_fib->header.u.ReceiverFibAddress = cpu_to_le32(fibptr->hw_fib_pa);
 hw_fib->header.SenderSize = cpu_to_le16(fibptr->dev->max_fib_size);
}
