
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int name; } ;


 struct wf_control** controls ;
 int strcmp (int ,char const*) ;
 scalar_t__ wf_get_control (struct wf_control*) ;

__attribute__((used)) static struct wf_control* pm121_register_control(struct wf_control *ct,
       const char *match,
       unsigned int id)
{
 if (controls[id] == ((void*)0) && !strcmp(ct->name, match)) {
  if (wf_get_control(ct) == 0)
   controls[id] = ct;
 }
 return controls[id];
}
