
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;


 int beiscsi_log_enable ;
 int beiscsi_log_enable_init (struct beiscsi_hba*,int ) ;

void beiscsi_hba_attrs_init(struct beiscsi_hba *phba)
{

 beiscsi_log_enable_init(phba, beiscsi_log_enable);
}
