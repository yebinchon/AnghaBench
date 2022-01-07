
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pt_regs {int dummy; } ;
struct ia64_fpreg {int dummy; } ;


 int CASE_FIXED_FP (int) ;
 unsigned long IA64_FIRST_ROTATING_FR ;
 unsigned long fph_index (struct kvm_pt_regs*,unsigned long) ;

void setfpreg(unsigned long regnum, struct ia64_fpreg *fpval,
     struct kvm_pt_regs *regs)
{

 if (regnum >= IA64_FIRST_ROTATING_FR)
  regnum = IA64_FIRST_ROTATING_FR + fph_index(regs, regnum);






 switch (regnum) {
  case (2) : ia64_ldf_fill(2, fpval); break;
  case (3) : ia64_ldf_fill(3, fpval); break;
  case (4) : ia64_ldf_fill(4, fpval); break;
  case (5) : ia64_ldf_fill(5, fpval); break;

  case (6) : ia64_ldf_fill(6, fpval); break;
  case (7) : ia64_ldf_fill(7, fpval); break;
  case (8) : ia64_ldf_fill(8, fpval); break;
  case (9) : ia64_ldf_fill(9, fpval); break;
  case (10) : ia64_ldf_fill(10, fpval); break;
  case (11) : ia64_ldf_fill(11, fpval); break;

  case (12) : ia64_ldf_fill(12, fpval); break;
  case (13) : ia64_ldf_fill(13, fpval); break;
  case (14) : ia64_ldf_fill(14, fpval); break;
  case (15) : ia64_ldf_fill(15, fpval); break;
  case (16) : ia64_ldf_fill(16, fpval); break;
  case (17) : ia64_ldf_fill(17, fpval); break;
  case (18) : ia64_ldf_fill(18, fpval); break;
  case (19) : ia64_ldf_fill(19, fpval); break;
  case (20) : ia64_ldf_fill(20, fpval); break;
  case (21) : ia64_ldf_fill(21, fpval); break;
  case (22) : ia64_ldf_fill(22, fpval); break;
  case (23) : ia64_ldf_fill(23, fpval); break;
  case (24) : ia64_ldf_fill(24, fpval); break;
  case (25) : ia64_ldf_fill(25, fpval); break;
  case (26) : ia64_ldf_fill(26, fpval); break;
  case (27) : ia64_ldf_fill(27, fpval); break;
  case (28) : ia64_ldf_fill(28, fpval); break;
  case (29) : ia64_ldf_fill(29, fpval); break;
  case (30) : ia64_ldf_fill(30, fpval); break;
  case (31) : ia64_ldf_fill(31, fpval); break;
  case (32) : ia64_ldf_fill(32, fpval); break;
  case (33) : ia64_ldf_fill(33, fpval); break;
  case (34) : ia64_ldf_fill(34, fpval); break;
  case (35) : ia64_ldf_fill(35, fpval); break;
  case (36) : ia64_ldf_fill(36, fpval); break;
  case (37) : ia64_ldf_fill(37, fpval); break;
  case (38) : ia64_ldf_fill(38, fpval); break;
  case (39) : ia64_ldf_fill(39, fpval); break;
  case (40) : ia64_ldf_fill(40, fpval); break;
  case (41) : ia64_ldf_fill(41, fpval); break;
  case (42) : ia64_ldf_fill(42, fpval); break;
  case (43) : ia64_ldf_fill(43, fpval); break;
  case (44) : ia64_ldf_fill(44, fpval); break;
  case (45) : ia64_ldf_fill(45, fpval); break;
  case (46) : ia64_ldf_fill(46, fpval); break;
  case (47) : ia64_ldf_fill(47, fpval); break;
  case (48) : ia64_ldf_fill(48, fpval); break;
  case (49) : ia64_ldf_fill(49, fpval); break;
  case (50) : ia64_ldf_fill(50, fpval); break;
  case (51) : ia64_ldf_fill(51, fpval); break;
  case (52) : ia64_ldf_fill(52, fpval); break;
  case (53) : ia64_ldf_fill(53, fpval); break;
  case (54) : ia64_ldf_fill(54, fpval); break;
  case (55) : ia64_ldf_fill(55, fpval); break;
  case (56) : ia64_ldf_fill(56, fpval); break;
  case (57) : ia64_ldf_fill(57, fpval); break;
  case (58) : ia64_ldf_fill(58, fpval); break;
  case (59) : ia64_ldf_fill(59, fpval); break;
  case (60) : ia64_ldf_fill(60, fpval); break;
  case (61) : ia64_ldf_fill(61, fpval); break;
  case (62) : ia64_ldf_fill(62, fpval); break;
  case (63) : ia64_ldf_fill(63, fpval); break;
  case (64) : ia64_ldf_fill(64, fpval); break;
  case (65) : ia64_ldf_fill(65, fpval); break;
  case (66) : ia64_ldf_fill(66, fpval); break;
  case (67) : ia64_ldf_fill(67, fpval); break;
  case (68) : ia64_ldf_fill(68, fpval); break;
  case (69) : ia64_ldf_fill(69, fpval); break;
  case (70) : ia64_ldf_fill(70, fpval); break;
  case (71) : ia64_ldf_fill(71, fpval); break;
  case (72) : ia64_ldf_fill(72, fpval); break;
  case (73) : ia64_ldf_fill(73, fpval); break;
  case (74) : ia64_ldf_fill(74, fpval); break;
  case (75) : ia64_ldf_fill(75, fpval); break;
  case (76) : ia64_ldf_fill(76, fpval); break;
  case (77) : ia64_ldf_fill(77, fpval); break;
  case (78) : ia64_ldf_fill(78, fpval); break;
  case (79) : ia64_ldf_fill(79, fpval); break;
  case (80) : ia64_ldf_fill(80, fpval); break;
  case (81) : ia64_ldf_fill(81, fpval); break;
  case (82) : ia64_ldf_fill(82, fpval); break;
  case (83) : ia64_ldf_fill(83, fpval); break;
  case (84) : ia64_ldf_fill(84, fpval); break;
  case (85) : ia64_ldf_fill(85, fpval); break;
  case (86) : ia64_ldf_fill(86, fpval); break;
  case (87) : ia64_ldf_fill(87, fpval); break;
  case (88) : ia64_ldf_fill(88, fpval); break;
  case (89) : ia64_ldf_fill(89, fpval); break;
  case (90) : ia64_ldf_fill(90, fpval); break;
  case (91) : ia64_ldf_fill(91, fpval); break;
  case (92) : ia64_ldf_fill(92, fpval); break;
  case (93) : ia64_ldf_fill(93, fpval); break;
  case (94) : ia64_ldf_fill(94, fpval); break;
  case (95) : ia64_ldf_fill(95, fpval); break;
  case (96) : ia64_ldf_fill(96, fpval); break;
  case (97) : ia64_ldf_fill(97, fpval); break;
  case (98) : ia64_ldf_fill(98, fpval); break;
  case (99) : ia64_ldf_fill(99, fpval); break;
  case (100) : ia64_ldf_fill(100, fpval); break;
  case (101) : ia64_ldf_fill(101, fpval); break;
  case (102) : ia64_ldf_fill(102, fpval); break;
  case (103) : ia64_ldf_fill(103, fpval); break;
  case (104) : ia64_ldf_fill(104, fpval); break;
  case (105) : ia64_ldf_fill(105, fpval); break;
  case (106) : ia64_ldf_fill(106, fpval); break;
  case (107) : ia64_ldf_fill(107, fpval); break;
  case (108) : ia64_ldf_fill(108, fpval); break;
  case (109) : ia64_ldf_fill(109, fpval); break;
  case (110) : ia64_ldf_fill(110, fpval); break;
  case (111) : ia64_ldf_fill(111, fpval); break;
  case (112) : ia64_ldf_fill(112, fpval); break;
  case (113) : ia64_ldf_fill(113, fpval); break;
  case (114) : ia64_ldf_fill(114, fpval); break;
  case (115) : ia64_ldf_fill(115, fpval); break;
  case (116) : ia64_ldf_fill(116, fpval); break;
  case (117) : ia64_ldf_fill(117, fpval); break;
  case (118) : ia64_ldf_fill(118, fpval); break;
  case (119) : ia64_ldf_fill(119, fpval); break;
  case (120) : ia64_ldf_fill(120, fpval); break;
  case (121) : ia64_ldf_fill(121, fpval); break;
  case (122) : ia64_ldf_fill(122, fpval); break;
  case (123) : ia64_ldf_fill(123, fpval); break;
  case (124) : ia64_ldf_fill(124, fpval); break;
  case (125) : ia64_ldf_fill(125, fpval); break;
  case (126) : ia64_ldf_fill(126, fpval); break;
  case (127) : ia64_ldf_fill(127, fpval); break;
 }
}
