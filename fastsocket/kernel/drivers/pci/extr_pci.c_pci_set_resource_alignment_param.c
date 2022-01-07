
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int RESOURCE_ALIGNMENT_PARAM_SIZE ;
 int resource_alignment_lock ;
 char* resource_alignment_param ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strncpy (char*,char const*,size_t) ;

ssize_t pci_set_resource_alignment_param(const char *buf, size_t count)
{
 if (count > RESOURCE_ALIGNMENT_PARAM_SIZE - 1)
  count = RESOURCE_ALIGNMENT_PARAM_SIZE - 1;
 spin_lock(&resource_alignment_lock);
 strncpy(resource_alignment_param, buf, count);
 resource_alignment_param[count] = '\0';
 spin_unlock(&resource_alignment_lock);
 return count;
}
