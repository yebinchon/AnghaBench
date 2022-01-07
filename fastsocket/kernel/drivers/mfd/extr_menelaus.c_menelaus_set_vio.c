
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int menelaus_get_vtg_value (unsigned int,int ,int ) ;
 int menelaus_set_voltage (int *,unsigned int,int,int) ;
 int vio_values ;
 int vio_vtg ;

int menelaus_set_vio(unsigned int mV)
{
 int val;

 if (mV == 0)
  return menelaus_set_voltage(&vio_vtg, 0, 0, 0);

 val = menelaus_get_vtg_value(mV, vio_values, ARRAY_SIZE(vio_values));
 if (val < 0)
  return -EINVAL;
 return menelaus_set_voltage(&vio_vtg, mV, val, 0x02);
}
