
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_l3l4_hdr {int status; int type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int I2400M_MS_DONE_OK ;


 int cpu_to_le16 (int ) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_l3l4_hdr const*,size_t) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_l3l4_hdr const*,size_t) ;
 int d_printf (int,struct device*,char*) ;
 int i2400m_cmd_enter_powersave (struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_power_save_disabled ;
 int i2400m_report_state_hook (struct i2400m*,struct i2400m_l3l4_hdr const*,size_t,char*) ;
 unsigned int le16_to_cpu (int ) ;

void i2400m_report_hook(struct i2400m *i2400m,
   const struct i2400m_l3l4_hdr *l3l4_hdr, size_t size)
{
 struct device *dev = i2400m_dev(i2400m);
 unsigned msg_type;

 d_fnstart(3, dev, "(i2400m %p l3l4_hdr %p size %zu)\n",
    i2400m, l3l4_hdr, size);


 msg_type = le16_to_cpu(l3l4_hdr->type);
 switch (msg_type) {
 case 128:
  i2400m_report_state_hook(i2400m,
      l3l4_hdr, size, "REPORT STATE");
  break;


 case 129:
  if (l3l4_hdr->status == cpu_to_le16(I2400M_MS_DONE_OK)) {
   if (i2400m_power_save_disabled)
    d_printf(1, dev, "ready for powersave, "
      "not requesting (disabled by module "
      "parameter)\n");
   else {
    d_printf(1, dev, "ready for powersave, "
      "requesting\n");
    i2400m_cmd_enter_powersave(i2400m);
   }
  }
  break;
 };
 d_fnend(3, dev, "(i2400m %p l3l4_hdr %p size %zu) = void\n",
  i2400m, l3l4_hdr, size);
}
