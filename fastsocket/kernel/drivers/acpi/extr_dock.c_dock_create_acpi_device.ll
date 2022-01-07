; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_dock_create_acpi_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_dock_create_acpi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@ACPI_BUS_TYPE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"error adding bus, %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (i32)* @dock_create_acpi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @dock_create_acpi_device(i32 %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @acpi_bus_get_device(i32 %8, %struct.acpi_device** %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @acpi_get_parent(i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @acpi_bus_get_device(i32 %14, %struct.acpi_device** %5)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.acpi_device* null, %struct.acpi_device** %5, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ACPI_BUS_TYPE_DEVICE, align 4
  %22 = call i32 @acpi_bus_add(%struct.acpi_device** %4, %struct.acpi_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  br label %32

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  store %struct.acpi_device* %31, %struct.acpi_device** %2, align 8
  br label %32

32:                                               ; preds = %30, %25
  %33 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %33
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @acpi_get_parent(i32, i32*) #1

declare dso_local i32 @acpi_bus_add(%struct.acpi_device**, %struct.acpi_device*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
