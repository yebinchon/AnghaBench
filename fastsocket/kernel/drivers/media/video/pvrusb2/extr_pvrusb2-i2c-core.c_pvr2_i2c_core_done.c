
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ i2c_linked; int i2c_adap; } ;


 int i2c_del_adapter (int *) ;

void pvr2_i2c_core_done(struct pvr2_hdw *hdw)
{
 if (hdw->i2c_linked) {
  i2c_del_adapter(&hdw->i2c_adap);
  hdw->i2c_linked = 0;
 }
}
