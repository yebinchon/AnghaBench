
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_3_2_2 {int dummy; } ;
struct sysinfo_2_2_2 {int dummy; } ;
struct sysinfo_1_2_2 {int dummy; } ;
struct sysinfo_1_1_1 {int dummy; } ;
typedef int off_t ;


 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int stsi_0 () ;
 int stsi_1_1_1 (struct sysinfo_1_1_1*,char*,int) ;
 int stsi_1_2_2 (struct sysinfo_1_2_2*,char*,int) ;
 int stsi_2_2_2 (struct sysinfo_2_2_2*,char*,int) ;
 int stsi_3_2_2 (struct sysinfo_3_2_2*,char*,int) ;

__attribute__((used)) static int proc_read_sysinfo(char *page, char **start,
        off_t off, int count,
        int *eof, void *data)
{
 unsigned long info = get_zeroed_page(GFP_KERNEL);
 int level, len;

 if (!info)
  return 0;

 len = 0;
 level = stsi_0();
 if (level >= 1)
  len = stsi_1_1_1((struct sysinfo_1_1_1 *) info, page, len);

 if (level >= 1)
  len = stsi_1_2_2((struct sysinfo_1_2_2 *) info, page, len);

 if (level >= 2)
  len = stsi_2_2_2((struct sysinfo_2_2_2 *) info, page, len);

 if (level >= 3)
  len = stsi_3_2_2((struct sysinfo_3_2_2 *) info, page, len);

 free_page(info);
 return len;
}
