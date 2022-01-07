
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int byte ;



__attribute__((used)) static void single_p (byte * P, word * PLength, byte Id) {
  P[(*PLength)++] = Id;
}
