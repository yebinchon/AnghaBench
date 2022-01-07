
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ipr_ioa_cfg {TYPE_1__* host; } ;
struct TYPE_2__ {int host_no; } ;


 int __ipr_format_res_path (int *,char*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *ipr_format_res_path(struct ipr_ioa_cfg *ioa_cfg,
     u8 *res_path, char *buffer, int len)
{
 char *p = buffer;

 *p = '\0';
 p += snprintf(p, buffer + len - p, "%d/", ioa_cfg->host->host_no);
 __ipr_format_res_path(res_path, p, len - (buffer - p));
 return buffer;
}
