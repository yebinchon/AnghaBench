; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.acpi_device*)* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_BUS_REMOVAL_EJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load i32, i32* @ACPI_BUS_REMOVAL_EJECT, align 4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 2
  %17 = call i32 @device_release_driver(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %54

21:                                               ; preds = %11
  %22 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %37, align 8
  %39 = icmp ne i32 (%struct.acpi_device*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)** %45, align 8
  %47 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %48 = call i32 %46(%struct.acpi_device* %47)
  br label %49

49:                                               ; preds = %40, %32, %27
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %52 = load i32, i32* @ACPI_BUS_REMOVAL_EJECT, align 4
  %53 = call i32 @acpi_device_unregister(%struct.acpi_device* %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %20, %8
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @device_release_driver(i32*) #1

declare dso_local i32 @acpi_device_unregister(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
