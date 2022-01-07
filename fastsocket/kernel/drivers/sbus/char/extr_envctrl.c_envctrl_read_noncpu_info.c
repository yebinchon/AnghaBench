
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_child_t {char* mon_type; char* tables; TYPE_2__* tblprop_array; TYPE_1__* chnl_array; scalar_t__ addr; } ;
struct TYPE_4__ {int offset; int scale; int type; } ;
struct TYPE_3__ {scalar_t__ chnl_no; } ;


 int PCF8584_MAX_CHANNELS ;
 int envctrl_i2c_data_translate (unsigned char,int ,int ,char*,unsigned char*) ;
 unsigned char envctrl_i2c_read_8591 (unsigned char,unsigned char) ;

__attribute__((used)) static int envctrl_read_noncpu_info(struct i2c_child_t *pchild,
        char mon_type, unsigned char *bufdata)
{
 unsigned char data;
 int i;
 char *tbl = ((void*)0);

 for (i = 0; i < PCF8584_MAX_CHANNELS; i++) {
  if (pchild->mon_type[i] == mon_type)
   break;
 }

 if (i >= PCF8584_MAX_CHANNELS)
  return 0;


 data = envctrl_i2c_read_8591((unsigned char)pchild->addr,
         (unsigned char)pchild->chnl_array[i].chnl_no);


 tbl = pchild->tables + pchild->tblprop_array[i].offset;

 return envctrl_i2c_data_translate(data, pchild->tblprop_array[i].type,
       pchild->tblprop_array[i].scale,
       tbl, bufdata);
}
