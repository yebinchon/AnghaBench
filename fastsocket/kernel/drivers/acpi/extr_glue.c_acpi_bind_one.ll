; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_glue.c_acpi_bind_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_glue.c_acpi_bind_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.acpi_device = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Drivers changed 'acpi_handle'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@acpi_glue_data_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"firmware_node\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"physical_node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @acpi_bind_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bind_one(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_warn(%struct.device* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @get_device(%struct.device* %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @acpi_glue_data_handler, align 4
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @acpi_attach_data(i64 %22, i32 %23, %struct.device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @put_device(%struct.device* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %75

34:                                               ; preds = %19
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @acpi_bus_get_device(i64 %39, %struct.acpi_device** %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @sysfs_create_link(i32* %46, i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %8, align 4
  %51 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_link(i32* %53, i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  %57 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %58 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %44
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @device_set_wakeup_capable(%struct.device* %64, i32 1)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @device_set_wakeup_enable(%struct.device* %66, i32 %71)
  br label %73

73:                                               ; preds = %63, %44
  br label %74

74:                                               ; preds = %73, %34
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %29, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @acpi_attach_data(i64, i32, %struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @acpi_bus_get_device(i64, %struct.acpi_device**) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
