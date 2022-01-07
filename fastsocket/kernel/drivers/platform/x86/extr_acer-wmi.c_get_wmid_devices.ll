; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_get_wmid_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_get_wmid_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@WMID_GUID2 = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_wmid_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wmid_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_buffer, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %6 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = load i32, i32* @WMID_GUID2, align 4
  %11 = call i32 @wmi_query_block(i32 %10, i32 1, %struct.acpi_buffer* %2)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %43

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %union.acpi_object*
  store %union.acpi_object* %19, %union.acpi_object** %3, align 8
  %20 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %21 = icmp ne %union.acpi_object* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %24 = bitcast %union.acpi_object* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %1, align 4
  br label %43

42:                                               ; preds = %28, %22, %16
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %35, %15
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @wmi_query_block(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
