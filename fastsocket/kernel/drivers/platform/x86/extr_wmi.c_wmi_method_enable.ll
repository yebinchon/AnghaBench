; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_method_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_method_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_block = type { i32, %struct.guid_block }
%struct.guid_block = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_NOT_EXIST = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"WE%02X\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wmi_block*, i32)* @wmi_method_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wmi_method_enable(%struct.wmi_block* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wmi_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.guid_block*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca [1 x %union.acpi_object], align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wmi_block* %0, %struct.wmi_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.guid_block* null, %struct.guid_block** %6, align 8
  %12 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %13 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %12, i32 0, i32 1
  store %struct.guid_block* %13, %struct.guid_block** %6, align 8
  %14 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %15 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.guid_block*, %struct.guid_block** %6, align 8
  %18 = icmp ne %struct.guid_block* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @AE_NOT_EXIST, align 8
  store i64 %20, i64* %3, align 8
  br label %51

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  store %union.acpi_object* %23, %union.acpi_object** %24, align 8
  %25 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %26 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  %27 = bitcast %union.acpi_object* %26 to i32*
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %33 = load %struct.guid_block*, %struct.guid_block** %6, align 8
  %34 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i8* %32, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %39 = call i64 @acpi_evaluate_object(i32 %37, i8* %38, %struct.acpi_object_list* %8, i32* null)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @AE_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %21
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @AE_NOT_FOUND, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %3, align 8
  br label %51

49:                                               ; preds = %43, %21
  %50 = load i64, i64* @AE_OK, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %49, %47, %19
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
