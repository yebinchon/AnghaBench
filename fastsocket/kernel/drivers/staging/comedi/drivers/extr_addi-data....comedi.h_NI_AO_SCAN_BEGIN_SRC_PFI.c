
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_USUAL_PFI_SELECT (unsigned int) ;

__attribute__((used)) static inline unsigned NI_AO_SCAN_BEGIN_SRC_PFI(unsigned pfi_channel) {
  return NI_USUAL_PFI_SELECT(pfi_channel);
 }
