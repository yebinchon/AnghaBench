
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pt_regs {int dummy; } ;
struct ia64_fpreg {int dummy; } ;


 int CASE_FIXED_FP (int) ;
 unsigned long IA64_FIRST_ROTATING_FR ;
 unsigned long fph_index (struct kvm_pt_regs*,unsigned long) ;

void getfpreg(unsigned long regnum, struct ia64_fpreg *fpval,
    struct kvm_pt_regs *regs)
{

 if (regnum >= IA64_FIRST_ROTATING_FR)
  regnum = IA64_FIRST_ROTATING_FR + fph_index(regs, regnum);





 switch (regnum) {
  case (0) : ia64_stf_spill(fpval, 0); break;
  case (1) : ia64_stf_spill(fpval, 1); break;
  case (2) : ia64_stf_spill(fpval, 2); break;
  case (3) : ia64_stf_spill(fpval, 3); break;
  case (4) : ia64_stf_spill(fpval, 4); break;
  case (5) : ia64_stf_spill(fpval, 5); break;

  case (6) : ia64_stf_spill(fpval, 6); break;
  case (7) : ia64_stf_spill(fpval, 7); break;
  case (8) : ia64_stf_spill(fpval, 8); break;
  case (9) : ia64_stf_spill(fpval, 9); break;
  case (10) : ia64_stf_spill(fpval, 10); break;
  case (11) : ia64_stf_spill(fpval, 11); break;

  case (12) : ia64_stf_spill(fpval, 12); break;
  case (13) : ia64_stf_spill(fpval, 13); break;
  case (14) : ia64_stf_spill(fpval, 14); break;
  case (15) : ia64_stf_spill(fpval, 15); break;
  case (16) : ia64_stf_spill(fpval, 16); break;
  case (17) : ia64_stf_spill(fpval, 17); break;
  case (18) : ia64_stf_spill(fpval, 18); break;
  case (19) : ia64_stf_spill(fpval, 19); break;
  case (20) : ia64_stf_spill(fpval, 20); break;
  case (21) : ia64_stf_spill(fpval, 21); break;
  case (22) : ia64_stf_spill(fpval, 22); break;
  case (23) : ia64_stf_spill(fpval, 23); break;
  case (24) : ia64_stf_spill(fpval, 24); break;
  case (25) : ia64_stf_spill(fpval, 25); break;
  case (26) : ia64_stf_spill(fpval, 26); break;
  case (27) : ia64_stf_spill(fpval, 27); break;
  case (28) : ia64_stf_spill(fpval, 28); break;
  case (29) : ia64_stf_spill(fpval, 29); break;
  case (30) : ia64_stf_spill(fpval, 30); break;
  case (31) : ia64_stf_spill(fpval, 31); break;
  case (32) : ia64_stf_spill(fpval, 32); break;
  case (33) : ia64_stf_spill(fpval, 33); break;
  case (34) : ia64_stf_spill(fpval, 34); break;
  case (35) : ia64_stf_spill(fpval, 35); break;
  case (36) : ia64_stf_spill(fpval, 36); break;
  case (37) : ia64_stf_spill(fpval, 37); break;
  case (38) : ia64_stf_spill(fpval, 38); break;
  case (39) : ia64_stf_spill(fpval, 39); break;
  case (40) : ia64_stf_spill(fpval, 40); break;
  case (41) : ia64_stf_spill(fpval, 41); break;
  case (42) : ia64_stf_spill(fpval, 42); break;
  case (43) : ia64_stf_spill(fpval, 43); break;
  case (44) : ia64_stf_spill(fpval, 44); break;
  case (45) : ia64_stf_spill(fpval, 45); break;
  case (46) : ia64_stf_spill(fpval, 46); break;
  case (47) : ia64_stf_spill(fpval, 47); break;
  case (48) : ia64_stf_spill(fpval, 48); break;
  case (49) : ia64_stf_spill(fpval, 49); break;
  case (50) : ia64_stf_spill(fpval, 50); break;
  case (51) : ia64_stf_spill(fpval, 51); break;
  case (52) : ia64_stf_spill(fpval, 52); break;
  case (53) : ia64_stf_spill(fpval, 53); break;
  case (54) : ia64_stf_spill(fpval, 54); break;
  case (55) : ia64_stf_spill(fpval, 55); break;
  case (56) : ia64_stf_spill(fpval, 56); break;
  case (57) : ia64_stf_spill(fpval, 57); break;
  case (58) : ia64_stf_spill(fpval, 58); break;
  case (59) : ia64_stf_spill(fpval, 59); break;
  case (60) : ia64_stf_spill(fpval, 60); break;
  case (61) : ia64_stf_spill(fpval, 61); break;
  case (62) : ia64_stf_spill(fpval, 62); break;
  case (63) : ia64_stf_spill(fpval, 63); break;
  case (64) : ia64_stf_spill(fpval, 64); break;
  case (65) : ia64_stf_spill(fpval, 65); break;
  case (66) : ia64_stf_spill(fpval, 66); break;
  case (67) : ia64_stf_spill(fpval, 67); break;
  case (68) : ia64_stf_spill(fpval, 68); break;
  case (69) : ia64_stf_spill(fpval, 69); break;
  case (70) : ia64_stf_spill(fpval, 70); break;
  case (71) : ia64_stf_spill(fpval, 71); break;
  case (72) : ia64_stf_spill(fpval, 72); break;
  case (73) : ia64_stf_spill(fpval, 73); break;
  case (74) : ia64_stf_spill(fpval, 74); break;
  case (75) : ia64_stf_spill(fpval, 75); break;
  case (76) : ia64_stf_spill(fpval, 76); break;
  case (77) : ia64_stf_spill(fpval, 77); break;
  case (78) : ia64_stf_spill(fpval, 78); break;
  case (79) : ia64_stf_spill(fpval, 79); break;
  case (80) : ia64_stf_spill(fpval, 80); break;
  case (81) : ia64_stf_spill(fpval, 81); break;
  case (82) : ia64_stf_spill(fpval, 82); break;
  case (83) : ia64_stf_spill(fpval, 83); break;
  case (84) : ia64_stf_spill(fpval, 84); break;
  case (85) : ia64_stf_spill(fpval, 85); break;
  case (86) : ia64_stf_spill(fpval, 86); break;
  case (87) : ia64_stf_spill(fpval, 87); break;
  case (88) : ia64_stf_spill(fpval, 88); break;
  case (89) : ia64_stf_spill(fpval, 89); break;
  case (90) : ia64_stf_spill(fpval, 90); break;
  case (91) : ia64_stf_spill(fpval, 91); break;
  case (92) : ia64_stf_spill(fpval, 92); break;
  case (93) : ia64_stf_spill(fpval, 93); break;
  case (94) : ia64_stf_spill(fpval, 94); break;
  case (95) : ia64_stf_spill(fpval, 95); break;
  case (96) : ia64_stf_spill(fpval, 96); break;
  case (97) : ia64_stf_spill(fpval, 97); break;
  case (98) : ia64_stf_spill(fpval, 98); break;
  case (99) : ia64_stf_spill(fpval, 99); break;
  case (100) : ia64_stf_spill(fpval, 100); break;
  case (101) : ia64_stf_spill(fpval, 101); break;
  case (102) : ia64_stf_spill(fpval, 102); break;
  case (103) : ia64_stf_spill(fpval, 103); break;
  case (104) : ia64_stf_spill(fpval, 104); break;
  case (105) : ia64_stf_spill(fpval, 105); break;
  case (106) : ia64_stf_spill(fpval, 106); break;
  case (107) : ia64_stf_spill(fpval, 107); break;
  case (108) : ia64_stf_spill(fpval, 108); break;
  case (109) : ia64_stf_spill(fpval, 109); break;
  case (110) : ia64_stf_spill(fpval, 110); break;
  case (111) : ia64_stf_spill(fpval, 111); break;
  case (112) : ia64_stf_spill(fpval, 112); break;
  case (113) : ia64_stf_spill(fpval, 113); break;
  case (114) : ia64_stf_spill(fpval, 114); break;
  case (115) : ia64_stf_spill(fpval, 115); break;
  case (116) : ia64_stf_spill(fpval, 116); break;
  case (117) : ia64_stf_spill(fpval, 117); break;
  case (118) : ia64_stf_spill(fpval, 118); break;
  case (119) : ia64_stf_spill(fpval, 119); break;
  case (120) : ia64_stf_spill(fpval, 120); break;
  case (121) : ia64_stf_spill(fpval, 121); break;
  case (122) : ia64_stf_spill(fpval, 122); break;
  case (123) : ia64_stf_spill(fpval, 123); break;
  case (124) : ia64_stf_spill(fpval, 124); break;
  case (125) : ia64_stf_spill(fpval, 125); break;
  case (126) : ia64_stf_spill(fpval, 126); break;
  case (127) : ia64_stf_spill(fpval, 127); break;
 }

}
