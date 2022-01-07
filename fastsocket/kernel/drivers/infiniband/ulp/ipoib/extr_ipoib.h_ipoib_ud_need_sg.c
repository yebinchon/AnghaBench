
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IPOIB_UD_BUF_SIZE (unsigned int) ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline int ipoib_ud_need_sg(unsigned int ib_mtu)
{
 return IPOIB_UD_BUF_SIZE(ib_mtu) > PAGE_SIZE;
}
