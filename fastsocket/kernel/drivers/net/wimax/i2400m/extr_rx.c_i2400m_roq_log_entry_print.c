
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_roq_log_entry {int type; int new_ws; int nsn; int sn; int count; int ws; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;






 int dev_err (struct device*,char*,unsigned int,unsigned int,int,...) ;
 struct device* i2400m_dev (struct i2400m*) ;

__attribute__((used)) static
void i2400m_roq_log_entry_print(struct i2400m *i2400m, unsigned index,
    unsigned e_index,
    struct i2400m_roq_log_entry *e)
{
 struct device *dev = i2400m_dev(i2400m);

 switch(e->type) {
 case 129:
  dev_err(dev, "q#%d reset           ws %u cnt %u sn %u/%u"
   " - new nws %u\n",
   index, e->ws, e->count, e->sn, e->nsn, e->new_ws);
  break;
 case 131:
  dev_err(dev, "q#%d queue           ws %u cnt %u sn %u/%u\n",
   index, e->ws, e->count, e->sn, e->nsn);
  break;
 case 128:
  dev_err(dev, "q#%d update_ws       ws %u cnt %u sn %u/%u"
   " - new nws %u\n",
   index, e->ws, e->count, e->sn, e->nsn, e->new_ws);
  break;
 case 130:
  dev_err(dev, "q#%d queue_update_ws ws %u cnt %u sn %u/%u"
   " - new nws %u\n",
   index, e->ws, e->count, e->sn, e->nsn, e->new_ws);
  break;
 default:
  dev_err(dev, "q#%d BUG? entry %u - unknown type %u\n",
   index, e_index, e->type);
  break;
 }
}
