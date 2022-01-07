
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct sym_device {int dummy; } ;


 int INB (struct sym_device*,int ) ;
 int T93C46_Write_Bit (struct sym_device*,int ,int *) ;
 int nc_gpreg ;

__attribute__((used)) static void T93C46_Send_Command(struct sym_device *np, u_short write_data,
    u_char *read_bit, u_char *gpreg)
{
 int x;


 for (x = 0; x < 9; x++)
  T93C46_Write_Bit(np, (u_char) (write_data >> (8 - x)), gpreg);

 *read_bit = INB(np, nc_gpreg);
}
