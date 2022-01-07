
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int menelaus_get_vtg_value (unsigned int,int ,int ) ;
 int menelaus_set_voltage (int *,unsigned int,int,int) ;
 int vaux_values ;
 int vaux_vtg ;

int menelaus_set_vaux(unsigned int mV)
{
 int val;

 if (mV == 0)
  return menelaus_set_voltage(&vaux_vtg, 0, 0, 0);

 val = menelaus_get_vtg_value(mV, vaux_values, ARRAY_SIZE(vaux_values));
 if (val < 0)
  return -EINVAL;
 return menelaus_set_voltage(&vaux_vtg, mV, val, 0x02);
}
