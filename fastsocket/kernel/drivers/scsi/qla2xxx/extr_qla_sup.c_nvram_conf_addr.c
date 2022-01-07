
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int nvram_conf_off; } ;



__attribute__((used)) static inline uint32_t
nvram_conf_addr(struct qla_hw_data *ha, uint32_t naddr)
{
 return ha->nvram_conf_off | naddr;
}
