; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_repair_package_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_repair_package_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_predefined_data = type { i32, i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object** }

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Incorrectly formed Package, attempting repair\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_repair_package_list(%struct.acpi_predefined_data* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_predefined_data*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_predefined_data* %0, %struct.acpi_predefined_data** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %7 = call %union.acpi_operand_object* @acpi_ut_create_package_object(i32 1)
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %6, align 8
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %11, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %17, align 8
  %19 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %18, i64 0
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %19, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %21, align 8
  %22 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %23 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([46 x i8]* @.str to i32))
  %35 = load i32, i32* @AE_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %12, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %union.acpi_operand_object* @acpi_ut_create_package_object(i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
