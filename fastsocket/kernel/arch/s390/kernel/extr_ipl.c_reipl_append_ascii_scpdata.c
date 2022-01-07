
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * scp_data; int scp_data_len; } ;
struct TYPE_4__ {TYPE_1__ fcp; } ;
struct ipl_parameter_block {TYPE_2__ ipl_info; } ;


 int isascii (int ) ;
 scalar_t__ islower (int ) ;
 int memcpy (char*,int *,size_t) ;
 size_t min (size_t,int ) ;
 int scpdata_length (int *,int ) ;
 char tolower (int ) ;

size_t reipl_append_ascii_scpdata(char *dest, size_t size,
      const struct ipl_parameter_block *ipb)
{
 size_t count;
 size_t i;
 int has_lowercase;

 count = min(size - 1, scpdata_length(ipb->ipl_info.fcp.scp_data,
          ipb->ipl_info.fcp.scp_data_len));
 if (!count)
  goto out;

 has_lowercase = 0;
 for (i = 0; i < count; i++) {
  if (!isascii(ipb->ipl_info.fcp.scp_data[i])) {
   count = 0;
   goto out;
  }
  if (!has_lowercase && islower(ipb->ipl_info.fcp.scp_data[i]))
   has_lowercase = 1;
 }

 if (has_lowercase)
  memcpy(dest, ipb->ipl_info.fcp.scp_data, count);
 else
  for (i = 0; i < count; i++)
   dest[i] = tolower(ipb->ipl_info.fcp.scp_data[i]);
out:
 dest[count] = '\0';
 return count;
}
