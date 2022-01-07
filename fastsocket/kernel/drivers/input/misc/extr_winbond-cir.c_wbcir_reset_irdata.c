
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ irdata_error; scalar_t__ irdata_off; scalar_t__ irdata_count; int irdata; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
wbcir_reset_irdata(struct wbcir_data *data)
{
 memset(data->irdata, 0, sizeof(data->irdata));
 data->irdata_count = 0;
 data->irdata_off = 0;
 data->irdata_error = 0;
}
