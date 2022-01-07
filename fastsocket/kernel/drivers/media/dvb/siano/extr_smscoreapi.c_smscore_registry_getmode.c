
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_registry_entry_t {int mode; } ;


 int default_mode ;
 int sms_err (char*) ;
 struct smscore_registry_entry_t* smscore_find_registry (char*) ;

int smscore_registry_getmode(char *devpath)
{
 struct smscore_registry_entry_t *entry;

 entry = smscore_find_registry(devpath);
 if (entry)
  return entry->mode;
 else
  sms_err("No registry found.");

 return default_mode;
}
