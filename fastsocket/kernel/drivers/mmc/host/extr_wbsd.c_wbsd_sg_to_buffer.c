
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int cur_sg; } ;


 char* sg_virt (int ) ;

__attribute__((used)) static inline char *wbsd_sg_to_buffer(struct wbsd_host *host)
{
 return sg_virt(host->cur_sg);
}
