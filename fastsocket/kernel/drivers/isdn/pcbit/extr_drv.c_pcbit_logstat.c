
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcbit_dev {TYPE_1__* dev_if; int id; } ;
struct TYPE_5__ {int arg; int driver; int command; } ;
typedef TYPE_2__ isdn_ctrl ;
struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;


 int ISDN_STAT_STAVAIL ;
 int STATBUF_LEN ;
 int stat_end ;
 int stat_st ;
 char* statbuf ;
 int strlen (char*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void pcbit_logstat(struct pcbit_dev *dev, char *str)
{
 int i;
 isdn_ctrl ictl;

 for (i=stat_end; i<strlen(str); i++)
 {
  statbuf[i]=str[i];
  stat_end = (stat_end + 1) % STATBUF_LEN;
  if (stat_end == stat_st)
   stat_st = (stat_st + 1) % STATBUF_LEN;
 }

 ictl.command=ISDN_STAT_STAVAIL;
 ictl.driver=dev->id;
 ictl.arg=strlen(str);
 dev->dev_if->statcallb(&ictl);
}
