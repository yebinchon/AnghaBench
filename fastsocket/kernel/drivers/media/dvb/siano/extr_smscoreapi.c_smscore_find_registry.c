
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_registry_entry_t {int entry; int devpath; int mode; } ;
struct list_head {struct list_head* next; } ;


 int GFP_KERNEL ;
 int default_mode ;
 struct list_head g_smscore_registry ;
 int g_smscore_registrylock ;
 struct smscore_registry_entry_t* kmalloc (int,int ) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 int list_add (int *,struct list_head*) ;
 int sms_err (char*) ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct smscore_registry_entry_t *smscore_find_registry(char *devpath)
{
 struct smscore_registry_entry_t *entry;
 struct list_head *next;

 kmutex_lock(&g_smscore_registrylock);
 for (next = g_smscore_registry.next;
      next != &g_smscore_registry;
      next = next->next) {
  entry = (struct smscore_registry_entry_t *) next;
  if (!strcmp(entry->devpath, devpath)) {
   kmutex_unlock(&g_smscore_registrylock);
   return entry;
  }
 }
 entry = kmalloc(sizeof(struct smscore_registry_entry_t), GFP_KERNEL);
 if (entry) {
  entry->mode = default_mode;
  strcpy(entry->devpath, devpath);
  list_add(&entry->entry, &g_smscore_registry);
 } else
  sms_err("failed to create smscore_registry.");
 kmutex_unlock(&g_smscore_registrylock);
 return entry;
}
