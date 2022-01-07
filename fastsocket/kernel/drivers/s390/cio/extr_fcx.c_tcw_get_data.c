
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcw {scalar_t__ output; scalar_t__ w; scalar_t__ input; scalar_t__ r; } ;
typedef scalar_t__ addr_t ;



void *tcw_get_data(struct tcw *tcw)
{
 if (tcw->r)
  return (void *) ((addr_t) tcw->input);
 if (tcw->w)
  return (void *) ((addr_t) tcw->output);
 return ((void*)0);
}
