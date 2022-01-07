
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef int u32 ;
struct aac_init {int HostElapsedSeconds; } ;
struct aac_dev {scalar_t__ init_pa; struct aac_init* init; } ;


 int INIT_STRUCT_BASE_ADDRESS ;
 int cpu_to_le32 (int ) ;
 int get_seconds () ;
 int rx_sync_cmd (struct aac_dev*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void aac_rx_start_adapter(struct aac_dev *dev)
{
 struct aac_init *init;

 init = dev->init;
 init->HostElapsedSeconds = cpu_to_le32(get_seconds());

 rx_sync_cmd(dev, INIT_STRUCT_BASE_ADDRESS, (u32)(ulong)dev->init_pa,
   0, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
