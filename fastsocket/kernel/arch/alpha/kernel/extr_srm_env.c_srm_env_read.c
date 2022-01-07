
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ srm_env_t ;
typedef scalar_t__ off_t ;


 int EFAULT ;
 unsigned long callback_getenv (int ,char*,int) ;

__attribute__((used)) static int
srm_env_read(char *page, char **start, off_t off, int count, int *eof,
  void *data)
{
 int nbytes;
 unsigned long ret;
 srm_env_t *entry;

 if (off != 0) {
  *eof = 1;
  return 0;
 }

 entry = (srm_env_t *) data;
 ret = callback_getenv(entry->id, page, count);

 if ((ret >> 61) == 0) {
  nbytes = (int) ret;
  *eof = 1;
 } else
  nbytes = -EFAULT;

 return nbytes;
}
