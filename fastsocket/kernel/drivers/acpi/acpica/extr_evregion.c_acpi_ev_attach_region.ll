; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_attach_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_attach_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32 }
%struct.TYPE_3__ = type { %union.acpi_operand_object* }

@ev_attach_region = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Adding Region [%4.4s] %p to address handler %p [%s]\0A\00", align 1
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @ev_attach_region, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %12 = bitcast %union.acpi_operand_object* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @acpi_ut_get_node_name(i32 %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @acpi_ut_get_region_name(i32 %21)
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 %22)
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %26, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %30, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %union.acpi_operand_object* %31, %union.acpi_operand_object** %34, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %37, align 8
  %39 = icmp ne %union.acpi_operand_object* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %3
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %47, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %49 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %48)
  %50 = load i32, i32* @AE_OK, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
