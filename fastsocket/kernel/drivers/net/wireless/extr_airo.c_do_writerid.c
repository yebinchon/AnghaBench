
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct airo_info {int dummy; } ;


 int PC4500_writerid (struct airo_info*,int ,void const*,int,int) ;
 int disable_MAC (struct airo_info*,int) ;
 int enable_MAC (struct airo_info*,int) ;

__attribute__((used)) static int do_writerid( struct airo_info *ai, u16 rid, const void *rid_data,
   int len, int dummy ) {
 int rc;

 disable_MAC(ai, 1);
 rc = PC4500_writerid(ai, rid, rid_data, len, 1);
 enable_MAC(ai, 1);
 return rc;
}
