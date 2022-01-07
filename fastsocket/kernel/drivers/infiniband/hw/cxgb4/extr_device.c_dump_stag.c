
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_debugfs_data {int bufsize; int pos; int buf; } ;


 int snprintf (int,int,char*,int) ;

__attribute__((used)) static int dump_stag(int id, void *p, void *data)
{
 struct c4iw_debugfs_data *stagd = data;
 int space;
 int cc;

 space = stagd->bufsize - stagd->pos - 1;
 if (space == 0)
  return 1;

 cc = snprintf(stagd->buf + stagd->pos, space, "0x%x\n", id<<8);
 if (cc < space)
  stagd->pos += cc;
 return 0;
}
