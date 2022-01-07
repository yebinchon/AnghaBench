
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int resource_alignment_lock ;
 char* resource_alignment_param ;
 size_t snprintf (char*,size_t,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

ssize_t pci_get_resource_alignment_param(char *buf, size_t size)
{
 size_t count;
 spin_lock(&resource_alignment_lock);
 count = snprintf(buf, size, "%s", resource_alignment_param);
 spin_unlock(&resource_alignment_lock);
 return count;
}
