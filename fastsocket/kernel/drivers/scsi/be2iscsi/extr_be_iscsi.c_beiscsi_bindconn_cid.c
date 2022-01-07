
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct beiscsi_hba {struct beiscsi_conn** conn_table; } ;
struct beiscsi_conn {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 size_t BE_GET_CRI_FROM_CID (unsigned int) ;
 int EINVAL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;

__attribute__((used)) static int beiscsi_bindconn_cid(struct beiscsi_hba *phba,
    struct beiscsi_conn *beiscsi_conn,
    unsigned int cid)
{
 uint16_t cri_index = BE_GET_CRI_FROM_CID(cid);

 if (phba->conn_table[cri_index]) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Connection table already occupied. Detected clash\n");

  return -EINVAL;
 } else {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BS_%d : phba->conn_table[%d]=%p(beiscsi_conn)\n",
       cri_index, beiscsi_conn);

  phba->conn_table[cri_index] = beiscsi_conn;
 }
 return 0;
}
