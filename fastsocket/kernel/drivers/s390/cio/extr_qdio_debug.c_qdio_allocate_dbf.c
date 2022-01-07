
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_irq {int debug_area; } ;
struct qdio_initialize {unsigned long q_format; unsigned long qib_param_field_format; TYPE_1__* cdev; int output_sbal_addr_array; int input_sbal_addr_array; int flags; int int_parm; int output_handler; int input_handler; int no_output_qs; int no_input_qs; int output_slib_elements; int input_slib_elements; int qib_param_field; int * adapter_name; } ;
struct TYPE_2__ {int dev; } ;


 int DBF_DEV_EVENT (int ,struct qdio_irq*,char*) ;
 int DBF_ERR ;
 int DBF_EVENT (char*,unsigned long,...) ;
 int DBF_HEX (int *,int) ;
 int DBF_WARN ;
 int debug_hex_ascii_view ;
 int debug_register (char*,int,int,int) ;
 int debug_register_view (int ,int *) ;
 int debug_set_level (int ,int ) ;
 char* dev_name (int *) ;
 int snprintf (char*,int,char*,char*) ;

void qdio_allocate_dbf(struct qdio_initialize *init_data,
         struct qdio_irq *irq_ptr)
{
 char text[20];

 DBF_EVENT("qfmt:%1d", init_data->q_format);
 DBF_HEX(init_data->adapter_name, 8);
 DBF_EVENT("qpff%4x", init_data->qib_param_field_format);
 DBF_HEX(&init_data->qib_param_field, sizeof(void *));
 DBF_HEX(&init_data->input_slib_elements, sizeof(void *));
 DBF_HEX(&init_data->output_slib_elements, sizeof(void *));
 DBF_EVENT("niq:%1d noq:%1d", init_data->no_input_qs,
    init_data->no_output_qs);
 DBF_HEX(&init_data->input_handler, sizeof(void *));
 DBF_HEX(&init_data->output_handler, sizeof(void *));
 DBF_HEX(&init_data->int_parm, sizeof(long));
 DBF_HEX(&init_data->flags, sizeof(long));
 DBF_HEX(&init_data->input_sbal_addr_array, sizeof(void *));
 DBF_HEX(&init_data->output_sbal_addr_array, sizeof(void *));
 DBF_EVENT("irq:%8lx", (unsigned long)irq_ptr);


 snprintf(text, 20, "qdio_%s", dev_name(&init_data->cdev->dev));
 irq_ptr->debug_area = debug_register(text, 2, 1, 16);
 debug_register_view(irq_ptr->debug_area, &debug_hex_ascii_view);
 debug_set_level(irq_ptr->debug_area, DBF_WARN);
 DBF_DEV_EVENT(DBF_ERR, irq_ptr, "dbf created");
}
