
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_guid (char const*,int *) ;

bool wmi_has_guid(const char *guid_string)
{
 return find_guid(guid_string, ((void*)0));
}
