
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAL_MAX_RX_SIZE ;

__attribute__((used)) static inline int mal_rx_size(int len)
{
 len = (len + 0xf) & ~0xf;
 return len > MAL_MAX_RX_SIZE ? MAL_MAX_RX_SIZE : len;
}
