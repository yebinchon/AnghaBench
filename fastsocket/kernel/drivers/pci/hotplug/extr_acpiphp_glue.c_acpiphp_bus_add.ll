; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_bus_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_bus_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_func = type { i32 }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"no parent device, assuming NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bus exists... trim\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"acpi_bus_trim return %x\0A\00", align 1
@ACPI_BUS_TYPE_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"error adding bus, %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpiphp_func*)* @acpiphp_bus_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpiphp_bus_add(%struct.acpiphp_func* %0) #0 {
  %2 = alloca %struct.acpiphp_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.acpiphp_func* %0, %struct.acpiphp_func** %2, align 8
  %7 = load %struct.acpiphp_func*, %struct.acpiphp_func** %2, align 8
  %8 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @acpi_get_parent(i32 %9, i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @acpi_bus_get_device(i32 %11, %struct.acpi_device** %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.acpi_device* null, %struct.acpi_device** %5, align 8
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.acpiphp_func*, %struct.acpiphp_func** %2, align 8
  %18 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @acpi_bus_get_device(i32 %19, %struct.acpi_device** %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %25 = call i32 @acpi_bus_trim(%struct.acpi_device* %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %30 = load %struct.acpiphp_func*, %struct.acpiphp_func** %2, align 8
  %31 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACPI_BUS_TYPE_DEVICE, align 4
  %34 = call i32 @acpi_bus_add(%struct.acpi_device** %4, %struct.acpi_device* %29, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %44

41:                                               ; preds = %28
  %42 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %43 = call i32 @acpi_bus_start(%struct.acpi_device* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @acpi_get_parent(i32, i32*) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @acpi_bus_trim(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_bus_add(%struct.acpi_device**, %struct.acpi_device*, i32, i32) #1

declare dso_local i32 @acpi_bus_start(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
