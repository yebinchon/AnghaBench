
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ar9170 {int dummy; } ;
typedef int rx_filter ;
typedef int __le32 ;


 int CARL9170_CMD_RX_FILTER ;
 int carl9170_exec_cmd (struct ar9170*,int ,int,int *,int ,int *) ;
 int cpu_to_le32 (unsigned int const) ;

__attribute__((used)) static inline int carl9170_rx_filter(struct ar9170 *ar,
         const unsigned int _rx_filter)
{
 __le32 rx_filter = cpu_to_le32(_rx_filter);

 return carl9170_exec_cmd(ar, CARL9170_CMD_RX_FILTER,
    sizeof(rx_filter), (u8 *)&rx_filter,
    0, ((void*)0));
}
