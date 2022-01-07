
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ word ;
typedef scalar_t__ byte ;
typedef int PLCI ;


 int add_ie (int *,scalar_t__,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void add_p(PLCI * plci, byte code, byte * p)
{
  word p_length;

  p_length = 0;
  if(p) p_length = p[0];
  add_ie(plci, code, p, p_length);
}
