
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_cpu_info {int configured; int standby; int combined; int has_cpu_type; int cpu; } ;
struct sclp_cpu_entry {int dummy; } ;
struct read_cpu_info_sccb {int nr_configured; int nr_standby; int offset_configured; } ;


 int memcpy (int *,char*,int) ;
 int memset (struct sclp_cpu_info*,int ,int) ;
 int sclp_fac84 ;

__attribute__((used)) static void sclp_fill_cpu_info(struct sclp_cpu_info *info,
          struct read_cpu_info_sccb *sccb)
{
 char *page = (char *) sccb;

 memset(info, 0, sizeof(*info));
 info->configured = sccb->nr_configured;
 info->standby = sccb->nr_standby;
 info->combined = sccb->nr_configured + sccb->nr_standby;
 info->has_cpu_type = sclp_fac84 & 0x1;
 memcpy(&info->cpu, page + sccb->offset_configured,
        info->combined * sizeof(struct sclp_cpu_entry));
}
