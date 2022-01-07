
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct lcs_card {int kernel_thread_starter; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_SET_MC_THREAD ;
 int lcs_set_thread_start_bit (struct lcs_card*,int ) ;
 int schedule_work (int *) ;
 int trace ;

__attribute__((used)) static void
lcs_set_multicast_list(struct net_device *dev)
{
}
