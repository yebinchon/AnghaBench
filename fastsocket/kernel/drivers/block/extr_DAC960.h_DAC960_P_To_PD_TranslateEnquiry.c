
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static inline void DAC960_P_To_PD_TranslateEnquiry(void *Enquiry)
{
  memcpy(Enquiry + 132, Enquiry + 36, 64);
  memset(Enquiry + 36, 0, 96);
}
