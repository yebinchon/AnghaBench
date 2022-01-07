; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswscope.c_acpi_ds_scope_stack_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswscope.c_acpi_ds_scope_stack_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_generic_state* }
%union.acpi_generic_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.acpi_generic_state* }
%struct.TYPE_4__ = type { i32 }

@ds_scope_stack_clear = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Popped object type (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_scope_stack_clear(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %4 = load i32, i32* @ds_scope_stack_clear, align 4
  %5 = call i32 @ACPI_FUNCTION_NAME(i32 %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 0
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %10 = icmp ne %union.acpi_generic_state* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 0
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %13, align 8
  store %union.acpi_generic_state* %14, %union.acpi_generic_state** %3, align 8
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %16 = bitcast %union.acpi_generic_state* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %17, align 8
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 0
  store %union.acpi_generic_state* %18, %union.acpi_generic_state** %20, align 8
  %21 = load i32, i32* @ACPI_DB_EXEC, align 4
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %23 = bitcast %union.acpi_generic_state* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @acpi_ut_get_type_name(i32 %25)
  %27 = call i32 @ACPI_DEBUG_PRINT(i32 %26)
  %28 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %29 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %28)
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
