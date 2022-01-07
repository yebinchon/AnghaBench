
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osdv2_cdb {int dummy; } ;
struct osdv1_cdb {int dummy; } ;
struct osd_capability {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int OSD_CAP_LEN ;
 int OSD_TOTAL_CDB_LEN ;
 int OSDv1_TOTAL_CDB_LEN ;

__attribute__((used)) static inline void build_test(void)
{

 BUILD_BUG_ON(sizeof(struct osd_capability) != OSD_CAP_LEN);
 BUILD_BUG_ON(sizeof(struct osdv2_cdb) != OSD_TOTAL_CDB_LEN);
 BUILD_BUG_ON(sizeof(struct osdv1_cdb) != OSDv1_TOTAL_CDB_LEN);
}
