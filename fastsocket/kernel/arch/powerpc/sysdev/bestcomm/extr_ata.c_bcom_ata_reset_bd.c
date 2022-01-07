
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int num_bd; int bd_size; int tasknum; scalar_t__ outdex; scalar_t__ index; int bd; } ;
struct bcom_ata_var {int bd_base; int bd_start; } ;


 scalar_t__ bcom_task_var (int ) ;
 int memset (int ,int,int) ;

void bcom_ata_reset_bd(struct bcom_task *tsk)
{
 struct bcom_ata_var *var;


 memset(tsk->bd, 0x00, tsk->num_bd * tsk->bd_size);

 tsk->index = 0;
 tsk->outdex = 0;

 var = (struct bcom_ata_var *) bcom_task_var(tsk->tasknum);
 var->bd_start = var->bd_base;
}
