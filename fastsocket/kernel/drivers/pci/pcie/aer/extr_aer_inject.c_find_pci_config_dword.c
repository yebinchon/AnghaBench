
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aer_error {int pos_cap_err; int source_id; int root_status; int header_log3; int header_log2; int header_log1; int header_log0; int cor_status; int uncor_status; } ;
__attribute__((used)) static u32 *find_pci_config_dword(struct aer_error *err, int where,
      int *prw1cs)
{
 int rw1cs = 0;
 u32 *target = ((void*)0);

 if (err->pos_cap_err == -1)
  return ((void*)0);

 switch (where - err->pos_cap_err) {
 case 128:
  target = &err->uncor_status;
  rw1cs = 1;
  break;
 case 132:
  target = &err->cor_status;
  rw1cs = 1;
  break;
 case 131:
  target = &err->header_log0;
  break;
 case 131 +4:
  target = &err->header_log1;
  break;
 case 131 +8:
  target = &err->header_log2;
  break;
 case 131 +12:
  target = &err->header_log3;
  break;
 case 129:
  target = &err->root_status;
  rw1cs = 1;
  break;
 case 130:
  target = &err->source_id;
  break;
 }
 if (prw1cs)
  *prw1cs = rw1cs;
 return target;
}
