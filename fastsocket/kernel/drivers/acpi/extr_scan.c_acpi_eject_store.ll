; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_eject_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_eject_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.acpi_eject_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_NOTIFY_EJECT_REQUEST = common dso_local global i32 0, align 4
@ACPI_OST_EC_OSPM_EJECT = common dso_local global i32 0, align 4
@ACPI_OST_SC_EJECT_IN_PROGRESS = common dso_local global i32 0, align 4
@acpi_bus_hot_remove_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @acpi_eject_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_eject_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.acpi_device*, align 8
  %14 = alloca %struct.acpi_eject_event*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.acpi_device* @to_acpi_device(%struct.device* %17)
  store %struct.acpi_device* %18, %struct.acpi_device** %13, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 49
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %100

30:                                               ; preds = %21
  %31 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %98

38:                                               ; preds = %30
  %39 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @acpi_get_type(i32 %41, i32* %12)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46, %38
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %98

55:                                               ; preds = %46
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.acpi_eject_event* @kmalloc(i32 8, i32 %56)
  store %struct.acpi_eject_event* %57, %struct.acpi_eject_event** %14, align 8
  %58 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %59 = icmp ne %struct.acpi_eject_event* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %98

63:                                               ; preds = %55
  %64 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %65 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %68 = getelementptr inbounds %struct.acpi_eject_event, %struct.acpi_eject_event* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load i32, i32* @ACPI_NOTIFY_EJECT_REQUEST, align 4
  %76 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %77 = getelementptr inbounds %struct.acpi_eject_event, %struct.acpi_eject_event* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %93

81:                                               ; preds = %63
  %82 = load i32, i32* @ACPI_OST_EC_OSPM_EJECT, align 4
  %83 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %84 = getelementptr inbounds %struct.acpi_eject_event, %struct.acpi_eject_event* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %86 = getelementptr inbounds %struct.acpi_eject_event, %struct.acpi_eject_event* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %89 = getelementptr inbounds %struct.acpi_eject_event, %struct.acpi_eject_event* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ACPI_OST_SC_EJECT_IN_PROGRESS, align 4
  %92 = call i32 @acpi_evaluate_hotplug_ost(i32 %87, i32 %90, i32 %91, i32* null)
  br label %93

93:                                               ; preds = %81, %74
  %94 = load i32, i32* @acpi_bus_hot_remove_device, align 4
  %95 = load %struct.acpi_eject_event*, %struct.acpi_eject_event** %14, align 8
  %96 = bitcast %struct.acpi_eject_event* %95 to i8*
  %97 = call i32 @acpi_os_hotplug_execute(i32 %94, i8* %96)
  br label %98

98:                                               ; preds = %93, %60, %52, %35
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %27
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @acpi_get_type(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_eject_event* @kmalloc(i32, i32) #1

declare dso_local i32 @acpi_evaluate_hotplug_ost(i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_os_hotplug_execute(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
