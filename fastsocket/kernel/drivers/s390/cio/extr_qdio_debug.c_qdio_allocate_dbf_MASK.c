#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qdio_irq {int /*<<< orphan*/  debug_area; } ;
struct qdio_initialize {unsigned long q_format; unsigned long qib_param_field_format; TYPE_1__* cdev; int /*<<< orphan*/  output_sbal_addr_array; int /*<<< orphan*/  input_sbal_addr_array; int /*<<< orphan*/  flags; int /*<<< orphan*/  int_parm; int /*<<< orphan*/  output_handler; int /*<<< orphan*/  input_handler; int /*<<< orphan*/  no_output_qs; int /*<<< orphan*/  no_input_qs; int /*<<< orphan*/  output_slib_elements; int /*<<< orphan*/  input_slib_elements; int /*<<< orphan*/  qib_param_field; int /*<<< orphan*/ * adapter_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qdio_irq*,char*) ; 
 int /*<<< orphan*/  DBF_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DBF_WARN ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

void FUNC8(struct qdio_initialize *init_data,
		       struct qdio_irq *irq_ptr)
{
	char text[20];

	FUNC1("qfmt:%1d", init_data->q_format);
	FUNC2(init_data->adapter_name, 8);
	FUNC1("qpff%4x", init_data->qib_param_field_format);
	FUNC2(&init_data->qib_param_field, sizeof(void *));
	FUNC2(&init_data->input_slib_elements, sizeof(void *));
	FUNC2(&init_data->output_slib_elements, sizeof(void *));
	FUNC1("niq:%1d noq:%1d", init_data->no_input_qs,
		  init_data->no_output_qs);
	FUNC2(&init_data->input_handler, sizeof(void *));
	FUNC2(&init_data->output_handler, sizeof(void *));
	FUNC2(&init_data->int_parm, sizeof(long));
	FUNC2(&init_data->flags, sizeof(long));
	FUNC2(&init_data->input_sbal_addr_array, sizeof(void *));
	FUNC2(&init_data->output_sbal_addr_array, sizeof(void *));
	FUNC1("irq:%8lx", (unsigned long)irq_ptr);

	/* allocate trace view for the interface */
	FUNC7(text, 20, "qdio_%s", FUNC6(&init_data->cdev->dev));
	irq_ptr->debug_area = FUNC3(text, 2, 1, 16);
	FUNC4(irq_ptr->debug_area, &debug_hex_ascii_view);
	FUNC5(irq_ptr->debug_area, DBF_WARN);
	FUNC0(DBF_ERR, irq_ptr, "dbf created");
}