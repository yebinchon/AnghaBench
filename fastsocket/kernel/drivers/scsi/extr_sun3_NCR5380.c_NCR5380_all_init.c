
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INI_PRINTK (char*) ;

__attribute__((used)) static inline void NCR5380_all_init (void)
{
    static int done = 0;
    if (!done) {
 INI_PRINTK("scsi : NCR5380_all_init()\n");
 done = 1;
    }
}
