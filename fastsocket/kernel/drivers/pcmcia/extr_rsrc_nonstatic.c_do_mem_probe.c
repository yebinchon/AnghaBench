
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket_data {int mem_db; } ;
struct pcmcia_socket {int map_size; int dev; struct socket_data* resource_data; } ;


 int KERN_INFO ;
 scalar_t__ checksum_match (struct pcmcia_socket*,int,int) ;
 scalar_t__ cis_readable (struct pcmcia_socket*,int,int) ;
 int dev_printk (int ,int *,char*,int,int) ;
 int printk (char*,...) ;
 int sub_interval (int *,int,int) ;

__attribute__((used)) static int do_mem_probe(u_long base, u_long num, struct pcmcia_socket *s)
{
    struct socket_data *s_data = s->resource_data;
    u_long i, j, bad, fail, step;

    dev_printk(KERN_INFO, &s->dev, "cs: memory probe 0x%06lx-0x%06lx:",
        base, base+num-1);
    bad = fail = 0;
    step = (num < 0x20000) ? 0x2000 : ((num>>4) & ~0x1fff);

    if (step > 0x800000)
 step = 0x800000;

    if (step < 2 * s->map_size)
 step = 2 * s->map_size;
    for (i = j = base; i < base+num; i = j + step) {
 if (!fail) {
     for (j = i; j < base+num; j += step) {
  if (cis_readable(s, j, step))
      break;
     }
     fail = ((i == base) && (j == base+num));
 }
 if (fail) {
     for (j = i; j < base+num; j += 2*step)
  if (checksum_match(s, j, step) &&
      checksum_match(s, j + step, step))
      break;
 }
 if (i != j) {
     if (!bad) printk(" excluding");
     printk(" %#05lx-%#05lx", i, j-1);
     sub_interval(&s_data->mem_db, i, j-i);
     bad += j-i;
 }
    }
    printk(bad ? "\n" : " clean.\n");
    return (num - bad);
}
