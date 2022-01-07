
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_prev_path_list {scalar_t__ aer; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_DEV_INFO (char*,int ) ;
 int BP_PATH (struct bnx2x*) ;
 int DP (int ,char*,int ) ;
 int NETIF_MSG_HW ;
 struct bnx2x_prev_path_list* bnx2x_prev_path_get_entry (struct bnx2x*) ;
 int bnx2x_prev_sem ;
 scalar_t__ down_trylock (int *) ;
 int up (int *) ;

__attribute__((used)) static bool bnx2x_prev_is_path_marked(struct bnx2x *bp)
{
 struct bnx2x_prev_path_list *tmp_list;
 int rc = 0;

 if (down_trylock(&bnx2x_prev_sem))
  return 0;

 tmp_list = bnx2x_prev_path_get_entry(bp);
 if (tmp_list) {
  if (tmp_list->aer) {
   DP(NETIF_MSG_HW, "Path %d was marked by AER\n",
      BP_PATH(bp));
  } else {
   rc = 1;
   BNX2X_DEV_INFO("Path %d was already cleaned from previous drivers\n",
           BP_PATH(bp));
  }
 }

 up(&bnx2x_prev_sem);

 return rc;
}
