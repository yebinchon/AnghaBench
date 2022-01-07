
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* initiator_iscsiname; } ;
struct beiscsi_hba {TYPE_1__ boot_sess; } ;
typedef int ssize_t ;


 int ENOSYS ;

 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t beiscsi_show_boot_ini_info(void *data, int type, char *buf)
{
 struct beiscsi_hba *phba = data;
 char *str = buf;
 int rc;

 switch (type) {
 case 128:
  rc = sprintf(str, "%s\n", phba->boot_sess.initiator_iscsiname);
  break;
 default:
  rc = -ENOSYS;
  break;
 }
 return rc;
}
