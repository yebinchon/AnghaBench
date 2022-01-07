
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int generation; } ;


 unsigned int atomic_read (int *) ;

__attribute__((used)) static inline unsigned int get_hpsb_generation(struct hpsb_host *host)
{
 return atomic_read(&host->generation);
}
