
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_USUAL_RTSI_SELECT (unsigned int) ;

__attribute__((used)) static inline unsigned NI_GPCT_RTSI_GATE_SELECT(unsigned n) {
  return NI_USUAL_RTSI_SELECT(n);
 }
