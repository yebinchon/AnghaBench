
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcmcia_socket {size_t fake_cis_len; int * fake_cis; int dev; } ;


 size_t const CISTPL_MAX_CIS_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_WARNING ;
 int dev_printk (int ,int *,char*) ;
 int kfree (int *) ;
 int * kmalloc (size_t const,int ) ;
 int memcpy (int *,int const*,size_t const) ;

int pcmcia_replace_cis(struct pcmcia_socket *s,
         const u8 *data, const size_t len)
{
 if (len > CISTPL_MAX_CIS_SIZE) {
  dev_printk(KERN_WARNING, &s->dev, "replacement CIS too big\n");
  return -EINVAL;
 }
 kfree(s->fake_cis);
 s->fake_cis = kmalloc(len, GFP_KERNEL);
 if (s->fake_cis == ((void*)0)) {
  dev_printk(KERN_WARNING, &s->dev, "no memory to replace CIS\n");
  return -ENOMEM;
 }
 s->fake_cis_len = len;
 memcpy(s->fake_cis, data, len);
 return 0;
}
