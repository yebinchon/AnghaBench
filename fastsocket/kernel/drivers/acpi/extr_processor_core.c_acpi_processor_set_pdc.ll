; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_set_pdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_set_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, %struct.acpi_object_list* }
%struct.acpi_object_list = type { %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@idle_nomwait = common dso_local global i64 0, align 8
@ACPI_PDC_C_C2C3_FFH = common dso_local global i32 0, align 4
@ACPI_PDC_C_C1_FFH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PDC\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Could not evaluate _PDC, using legacy perf. control...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_set_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_set_pdc(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca %struct.acpi_object_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 1
  %10 = load %struct.acpi_object_list*, %struct.acpi_object_list** %9, align 8
  store %struct.acpi_object_list* %10, %struct.acpi_object_list** %4, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.acpi_object_list*, %struct.acpi_object_list** %4, align 8
  %13 = icmp ne %struct.acpi_object_list* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load i64, i64* @idle_nomwait, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  store i32* null, i32** %7, align 8
  %20 = load %struct.acpi_object_list*, %struct.acpi_object_list** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 0
  %22 = load %union.acpi_object*, %union.acpi_object** %21, align 8
  store %union.acpi_object* %22, %union.acpi_object** %6, align 8
  %23 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %7, align 8
  %28 = load i32, i32* @ACPI_PDC_C_C2C3_FFH, align 4
  %29 = load i32, i32* @ACPI_PDC_C_C1_FFH, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.acpi_object_list*, %struct.acpi_object_list** %4, align 8
  %41 = call i32 @acpi_evaluate_object(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %40, i32* null)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @ACPI_DB_INFO, align 4
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([56 x i8]* @.str.1 to i32))
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
