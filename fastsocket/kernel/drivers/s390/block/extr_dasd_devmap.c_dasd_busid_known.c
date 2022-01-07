
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 int dasd_find_busid (char const*) ;

int
dasd_busid_known(const char *bus_id)
{
 return IS_ERR(dasd_find_busid(bus_id)) ? -ENOENT : 0;
}
