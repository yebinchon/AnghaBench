
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int fw_memory_size; } ;


 int QLA_SUCCESS ;
 int qla24xx_dump_ram (struct qla_hw_data*,int,void*,int,void**) ;

__attribute__((used)) static int
qla24xx_dump_memory(struct qla_hw_data *ha, uint32_t *code_ram,
    uint32_t cram_size, void **nxt)
{
 int rval;


 rval = qla24xx_dump_ram(ha, 0x20000, code_ram, cram_size / 4, nxt);
 if (rval != QLA_SUCCESS)
  return rval;


 return qla24xx_dump_ram(ha, 0x100000, *nxt,
     ha->fw_memory_size - 0x100000 + 1, nxt);
}
