
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct igb_q_vector {int adapter; } ;
typedef int __le64 ;


 int igb_ptp_systim_to_hwtstamp (int ,int ,int ) ;
 int le64_to_cpu (int ) ;
 int skb_hwtstamps (struct sk_buff*) ;

void igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector,
    unsigned char *va,
    struct sk_buff *skb)
{
 __le64 *regval = (__le64 *)va;





 igb_ptp_systim_to_hwtstamp(q_vector->adapter, skb_hwtstamps(skb),
       le64_to_cpu(regval[1]));
}
