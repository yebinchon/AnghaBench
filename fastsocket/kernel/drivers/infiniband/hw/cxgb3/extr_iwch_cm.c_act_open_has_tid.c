
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPL_ERR_ARP_MISS ;
 int CPL_ERR_CONN_EXIST ;
 int CPL_ERR_TCAM_FULL ;

__attribute__((used)) static inline int act_open_has_tid(int status)
{
 return status != CPL_ERR_TCAM_FULL && status != CPL_ERR_CONN_EXIST &&
        status != CPL_ERR_ARP_MISS;
}
