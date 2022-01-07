
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVC_NLINES ;
 int pvc_clear () ;
 int * pvc_lines ;
 int pvc_write_string (int ,int ,int) ;

__attribute__((used)) static void pvc_display(unsigned long data)
{
 int i;

 pvc_clear();
 for (i = 0; i < PVC_NLINES; i++)
  pvc_write_string(pvc_lines[i], 0, i);
}
