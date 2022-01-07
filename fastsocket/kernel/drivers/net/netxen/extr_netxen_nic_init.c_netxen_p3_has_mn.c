
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;


 scalar_t__ NETXEN_DECODE_VERSION (scalar_t__) ;
 scalar_t__ NETXEN_VERSION_CODE (int,int ,int) ;
 scalar_t__ NXRD32 (struct netxen_adapter*,int ) ;
 int NX_FW_VERSION_OFFSET ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 int NX_PEG_TUNE_CAPABILITY ;
 scalar_t__ NX_PEG_TUNE_MN_PRESENT ;
 int netxen_rom_fast_read (struct netxen_adapter*,int ,int*) ;

__attribute__((used)) static int
netxen_p3_has_mn(struct netxen_adapter *adapter)
{
 u32 capability, flashed_ver;
 capability = 0;


 if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
  return 1;

 netxen_rom_fast_read(adapter,
   NX_FW_VERSION_OFFSET, (int *)&flashed_ver);
 flashed_ver = NETXEN_DECODE_VERSION(flashed_ver);

 if (flashed_ver >= NETXEN_VERSION_CODE(4, 0, 220)) {

  capability = NXRD32(adapter, NX_PEG_TUNE_CAPABILITY);
  if (capability & NX_PEG_TUNE_MN_PRESENT)
   return 1;
 }
 return 0;
}
