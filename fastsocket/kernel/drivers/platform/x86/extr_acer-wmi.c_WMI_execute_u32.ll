; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMI_execute_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMI_execute_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i8*, i64, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@WMID_GUID1 = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @WMI_execute_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMI_execute_u32(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  store i8* inttoptr (i64 8 to i8*), i8** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  %15 = bitcast i64* %6 to i8*
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %19 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %18, align 8
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* @WMID_GUID1, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @wmi_evaluate_method(i32 %24, i32 1, i64 %25, %struct.acpi_buffer* %8, %struct.acpi_buffer* %9)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %union.acpi_object*
  store %union.acpi_object* %35, %union.acpi_object** %10, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %37 = icmp ne %union.acpi_object* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %40 = bitcast %union.acpi_object* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, 8
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  br label %59

58:                                               ; preds = %44, %38, %32
  store i64 0, i64* %11, align 8
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i64*, i64** %7, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %11, align 8
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @kfree(i64 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %30
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @wmi_evaluate_method(i32, i32, i64, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
