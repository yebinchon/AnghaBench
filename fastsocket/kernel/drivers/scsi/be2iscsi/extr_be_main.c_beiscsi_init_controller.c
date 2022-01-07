
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;


 int BEISCSI_LOG_INIT ;
 int ENOMEM ;
 int KERN_ERR ;
 int KERN_INFO ;
 int beiscsi_free_mem (struct beiscsi_hba*) ;
 int beiscsi_get_memory (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int hwi_init_controller (struct beiscsi_hba*) ;

__attribute__((used)) static int beiscsi_init_controller(struct beiscsi_hba *phba)
{
 int ret = -ENOMEM;

 ret = beiscsi_get_memory(phba);
 if (ret < 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : beiscsi_dev_probe -"
       "Failed in beiscsi_alloc_memory\n");
  return ret;
 }

 ret = hwi_init_controller(phba);
 if (ret)
  goto free_init;
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
      "BM_%d : Return success from beiscsi_init_controller");

 return 0;

free_init:
 beiscsi_free_mem(phba);
 return ret;
}
