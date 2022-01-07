
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smu_sdbp_slotspow {int dummy; } ;
struct smu_sdbp_header {int version; } ;
struct smu_sdbp_cpuvcp {int dummy; } ;
struct smu_sdbp_cpudiode {int dummy; } ;


 int SMU_SDB_CPUDIODE_ID ;
 int SMU_SDB_CPUVCP_ID ;
 int SMU_SDB_DEBUG_SWITCHES_ID ;
 int SMU_SDB_SLOTSPOW_ID ;
 struct smu_sdbp_cpudiode* cpudiode ;
 struct smu_sdbp_cpuvcp* cpuvcp ;
 int cpuvcp_version ;
 int * debugswitches ;
 struct smu_sdbp_slotspow* slotspow ;
 struct smu_sdbp_header* smu_get_sdb_partition (int ,int *) ;

__attribute__((used)) static void smu_fetch_param_partitions(void)
{
 const struct smu_sdbp_header *hdr;


 hdr = smu_get_sdb_partition(SMU_SDB_CPUVCP_ID, ((void*)0));
 if (hdr != ((void*)0)) {
  cpuvcp = (struct smu_sdbp_cpuvcp *)&hdr[1];

  cpuvcp_version = hdr->version;
 }


 hdr = smu_get_sdb_partition(SMU_SDB_CPUDIODE_ID, ((void*)0));
 if (hdr != ((void*)0))
  cpudiode = (struct smu_sdbp_cpudiode *)&hdr[1];


 hdr = smu_get_sdb_partition(SMU_SDB_SLOTSPOW_ID, ((void*)0));
 if (hdr != ((void*)0))
  slotspow = (struct smu_sdbp_slotspow *)&hdr[1];


 hdr = smu_get_sdb_partition(SMU_SDB_DEBUG_SWITCHES_ID, ((void*)0));
 if (hdr != ((void*)0))
  debugswitches = (u8 *)&hdr[1];
}
