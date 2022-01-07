
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;


 int TX_NOTIFY_DELAYED_GENERALERROR ;
 int TX_NOTIFY_DELAYED_OK ;
 int TX_NOTIFY_DELAYED_UNREACHABLE ;
 int TX_NOTIFY_GENERALERROR ;
 int TX_NOTIFY_OK ;
 int TX_NOTIFY_UNREACHABLE ;

__attribute__((used)) static inline enum iucv_tx_notify qeth_compute_cq_notification(int sbalf15,
 int delayed) {
 enum iucv_tx_notify n;

 switch (sbalf15) {
 case 0:
  n = delayed ? TX_NOTIFY_DELAYED_OK : TX_NOTIFY_OK;
  break;
 case 4:
 case 16:
 case 17:
 case 18:
  n = delayed ? TX_NOTIFY_DELAYED_UNREACHABLE :
   TX_NOTIFY_UNREACHABLE;
  break;
 default:
  n = delayed ? TX_NOTIFY_DELAYED_GENERALERROR :
   TX_NOTIFY_GENERALERROR;
  break;
 }

 return n;
}
