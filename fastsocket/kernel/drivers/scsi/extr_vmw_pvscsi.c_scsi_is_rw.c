
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char READ_10 ;
 unsigned char READ_12 ;
 unsigned char READ_16 ;
 unsigned char READ_6 ;
 unsigned char WRITE_10 ;
 unsigned char WRITE_12 ;
 unsigned char WRITE_16 ;
 unsigned char WRITE_6 ;

__attribute__((used)) static int scsi_is_rw(unsigned char op)
{
 return op == READ_6 || op == WRITE_6 ||
        op == READ_10 || op == WRITE_10 ||
        op == READ_12 || op == WRITE_12 ||
        op == READ_16 || op == WRITE_16;
}
