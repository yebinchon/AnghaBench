
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ZD_OFDM ;
 int zd_ofdm_plcp_header_rate (void const*) ;

__attribute__((used)) static inline u8 zd_rate_from_ofdm_plcp_header(const void *rx_frame)
{
 return ZD_OFDM | zd_ofdm_plcp_header_rate(rx_frame);
}
