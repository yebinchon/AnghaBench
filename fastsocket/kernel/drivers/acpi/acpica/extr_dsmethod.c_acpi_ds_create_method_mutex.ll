; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_create_method_mutex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_create_method_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_operand_object*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ds_create_method_mutex = common dso_local global i32 0, align 4
@ACPI_TYPE_MUTEX = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*)* @acpi_ds_create_method_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %6 = load i32, i32* @ds_create_method_mutex, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_TYPE_MUTEX, align 4
  %9 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %8)
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %4, align 8
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %11 = icmp ne %union.acpi_operand_object* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @AE_NO_MEMORY, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @acpi_os_create_mutex(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %union.acpi_operand_object* %34, %union.acpi_operand_object** %37, align 8
  %38 = load i32, i32* @AE_OK, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_os_create_mutex(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
