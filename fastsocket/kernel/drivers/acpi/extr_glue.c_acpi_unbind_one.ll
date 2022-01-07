; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_glue.c_acpi_unbind_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_glue.c_acpi_unbind_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.acpi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"firmware_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"physical_node\00", align 1
@acpi_glue_data_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Oops, 'acpi_handle' corrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_unbind_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_unbind_one(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.device* @acpi_get_physical_device(i32* %16)
  %18 = icmp eq %struct.device* %12, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %11
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @put_device(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @acpi_bus_get_device(i32* %25, %struct.acpi_device** %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 1
  %31 = call i32 @sysfs_remove_link(i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_remove_link(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %28, %19
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @acpi_glue_data_handler, align 4
  %42 = call i32 @acpi_detach_data(i32* %40, i32 %41)
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 @put_device(%struct.device* %46)
  br label %51

48:                                               ; preds = %11
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %36
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.device* @acpi_get_physical_device(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @acpi_bus_get_device(i32*, %struct.acpi_device**) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @acpi_detach_data(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
