
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct nic {int dummy; } ;
struct firmware {size_t* data; } ;
struct TYPE_2__ {int * ucode; } ;
struct cb {int command; TYPE_1__ u; int * skb; } ;


 int BUNDLEMAX ;
 scalar_t__ BUNDLESMALL ;
 int INTDELAY ;
 int UCODE_SIZE ;
 int cb_el ;
 int cb_ucode ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int memcpy (int *,size_t*,int) ;

__attribute__((used)) static void e100_setup_ucode(struct nic *nic, struct cb *cb,
        struct sk_buff *skb)
{
 const struct firmware *fw = (void *)skb;
 u8 timer, bundle, min_size;



 cb->skb = ((void*)0);


 memcpy(cb->u.ucode, fw->data, UCODE_SIZE * 4);


 timer = fw->data[UCODE_SIZE * 4];
 bundle = fw->data[UCODE_SIZE * 4 + 1];
 min_size = fw->data[UCODE_SIZE * 4 + 2];


 cb->u.ucode[timer] &= cpu_to_le32(0xFFFF0000);
 cb->u.ucode[timer] |= cpu_to_le32(INTDELAY);
 cb->u.ucode[bundle] &= cpu_to_le32(0xFFFF0000);
 cb->u.ucode[bundle] |= cpu_to_le32(BUNDLEMAX);
 cb->u.ucode[min_size] &= cpu_to_le32(0xFFFF0000);
 cb->u.ucode[min_size] |= cpu_to_le32((BUNDLESMALL) ? 0xFFFF : 0xFF80);

 cb->command = cpu_to_le16(cb_ucode | cb_el);
}
