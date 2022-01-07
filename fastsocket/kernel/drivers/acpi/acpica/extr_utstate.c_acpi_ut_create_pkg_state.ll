; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_pkg_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_pkg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, %union.acpi_operand_object* }
%union.acpi_operand_object = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ut_create_pkg_state = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_create_pkg_state(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %union.acpi_generic_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_generic_state*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @ut_create_pkg_state, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, i8* %10)
  %12 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %12, %union.acpi_generic_state** %8, align 8
  %13 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %14 = icmp ne %union.acpi_generic_state* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @return_PTR(%union.acpi_generic_state* null)
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* @ACPI_DESC_TYPE_STATE_PACKAGE, align 4
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %20 = bitcast %union.acpi_generic_state* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %union.acpi_operand_object*
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %25 = bitcast %union.acpi_generic_state* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %29 = bitcast %union.acpi_generic_state* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %33 = bitcast %union.acpi_generic_state* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %36 = bitcast %union.acpi_generic_state* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %39 = call i32 @return_PTR(%union.acpi_generic_state* %38)
  %40 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  ret %union.acpi_generic_state* %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i8*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @return_PTR(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
