
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {int id; } ;
struct pcbit_chan {int id; } ;


 char** isdn_state_table ;
 int pcbit_logstat (struct pcbit_dev*,char*) ;
 int printk (char*,char*) ;
 int sprintf (char*,char*,int,int,char*,char*,char*) ;
 char* strisdnevent (unsigned short) ;

void pcbit_state_change(struct pcbit_dev * dev, struct pcbit_chan * chan,
   unsigned short i, unsigned short ev, unsigned short f)
{
 char buf[256];

 sprintf(buf, "change on device: %d channel:%d\n%s -> %s -> %s\n",
  dev->id, chan->id,
  isdn_state_table[i], strisdnevent(ev), isdn_state_table[f]
  );





 pcbit_logstat(dev, buf);
}
