
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int mmio_nvram_len ;

__attribute__((used)) static ssize_t mmio_nvram_get_size(void)
{
 return mmio_nvram_len;
}
