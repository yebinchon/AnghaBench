
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct beiscsi_hba {int ** conn_table; } ;


 int BEISCSI_LOG_CONFIG ;
 size_t BE_GET_CRI_FROM_CID (unsigned int) ;
 int EINVAL ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;

__attribute__((used)) static int beiscsi_unbind_conn_to_cid(struct beiscsi_hba *phba,
          unsigned int cid)
{
 uint16_t cri_index = BE_GET_CRI_FROM_CID(cid);

 if (phba->conn_table[cri_index])
  phba->conn_table[cri_index] = ((void*)0);
 else {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BS_%d : Connection table Not occupied.\n");
  return -EINVAL;
 }
 return 0;
}
