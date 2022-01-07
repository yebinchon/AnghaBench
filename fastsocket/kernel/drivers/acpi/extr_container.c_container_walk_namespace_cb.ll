; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_container.c_container_walk_namespace_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_container.c_container_walk_namespace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_VALID_HID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ACPI0004\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0A05\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PNP0A06\00", align 1
@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@container_notify_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @container_walk_namespace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @container_walk_namespace_cb(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.acpi_device_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %13, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @acpi_get_object_info(i32 %16, %struct.acpi_device_info** %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %5, align 4
  br label %71

23:                                               ; preds = %4
  %24 = load %struct.acpi_device_info*, %struct.acpi_device_info** %11, align 8
  %25 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ACPI_VALID_HID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.acpi_device_info*, %struct.acpi_device_info** %11, align 8
  %32 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %67

52:                                               ; preds = %47, %43, %39
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %65 [
    i32 129, label %55
    i32 128, label %60
  ]

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %58 = load i32, i32* @container_notify_cb, align 4
  %59 = call i32 @acpi_install_notify_handler(i32 %56, i32 %57, i32 %58, i32* null)
  br label %66

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %63 = load i32, i32* @container_notify_cb, align 4
  %64 = call i32 @acpi_remove_notify_handler(i32 %61, i32 %62, i32 %63)
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %60, %55
  br label %67

67:                                               ; preds = %66, %51, %38
  %68 = load %struct.acpi_device_info*, %struct.acpi_device_info** %11, align 8
  %69 = call i32 @kfree(%struct.acpi_device_info* %68)
  %70 = load i32, i32* @AE_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @acpi_get_object_info(i32, %struct.acpi_device_info**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.acpi_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
