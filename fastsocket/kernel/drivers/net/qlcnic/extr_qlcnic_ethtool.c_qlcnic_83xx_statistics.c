
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int qlcnic_83xx_mac_stats_strings ;
 int qlcnic_83xx_rx_stats_strings ;
 int qlcnic_83xx_tx_stats_strings ;

__attribute__((used)) static inline int qlcnic_83xx_statistics(void)
{
 return ARRAY_SIZE(qlcnic_83xx_tx_stats_strings) +
        ARRAY_SIZE(qlcnic_83xx_mac_stats_strings) +
        ARRAY_SIZE(qlcnic_83xx_rx_stats_strings);
}
