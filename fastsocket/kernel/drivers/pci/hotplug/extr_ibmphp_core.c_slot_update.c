
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int dummy; } ;


 int READ_ALLSTAT ;
 int get_cur_bus_info (struct slot**) ;
 int ibmphp_hpc_readslot (struct slot*,int ,int *) ;
 int init_flag ;

__attribute__((used)) static inline int slot_update(struct slot **sl)
{
 int rc;
  rc = ibmphp_hpc_readslot(*sl, READ_ALLSTAT, ((void*)0));
 if (rc)
  return rc;
 if (!init_flag)
  rc = get_cur_bus_info(sl);
 return rc;
}
