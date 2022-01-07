
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter_info {int dummy; } ;


 unsigned int ARRAY_SIZE (struct adapter_info const*) ;
 struct adapter_info const* t3_adap_info ;

const struct adapter_info *t3_get_adapter_info(unsigned int id)
{
 return id < ARRAY_SIZE(t3_adap_info) ? &t3_adap_info[id] : ((void*)0);
}
