
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int EIO ;
 scalar_t__ pnp_bios_get_stat_res (char*) ;

__attribute__((used)) static int proc_read_legacyres(char *buf, char **start, off_t pos,
          int count, int *eof, void *data)
{

 if (pnp_bios_get_stat_res(buf))
  return -EIO;

 return count;
}
