
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acx_tx_queue_qos_config {int qid; int high_threshold; int low_threshold; } ;


 int EINVAL ;




 int QOS_TX_HIGH_BE_DEF ;
 int QOS_TX_HIGH_BK_DEF ;
 int QOS_TX_HIGH_VI_DEF ;
 int QOS_TX_HIGH_VO_DEF ;
 int QOS_TX_LOW_BE_DEF ;
 int QOS_TX_LOW_BK_DEF ;
 int QOS_TX_LOW_VI_DEF ;
 int QOS_TX_LOW_VO_DEF ;
 int wl1251_error (char*,int) ;

__attribute__((used)) static int wl1251_hw_init_txq_fill(u8 qid,
       struct acx_tx_queue_qos_config *config,
       u32 num_blocks)
{
 config->qid = qid;

 switch (qid) {
 case 131:
  config->high_threshold =
   (QOS_TX_HIGH_BE_DEF * num_blocks) / 100;
  config->low_threshold =
   (QOS_TX_LOW_BE_DEF * num_blocks) / 100;
  break;
 case 130:
  config->high_threshold =
   (QOS_TX_HIGH_BK_DEF * num_blocks) / 100;
  config->low_threshold =
   (QOS_TX_LOW_BK_DEF * num_blocks) / 100;
  break;
 case 129:
  config->high_threshold =
   (QOS_TX_HIGH_VI_DEF * num_blocks) / 100;
  config->low_threshold =
   (QOS_TX_LOW_VI_DEF * num_blocks) / 100;
  break;
 case 128:
  config->high_threshold =
   (QOS_TX_HIGH_VO_DEF * num_blocks) / 100;
  config->low_threshold =
   (QOS_TX_LOW_VO_DEF * num_blocks) / 100;
  break;
 default:
  wl1251_error("Invalid TX queue id: %d", qid);
  return -EINVAL;
 }

 return 0;
}
