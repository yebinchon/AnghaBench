; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_processor = type { i32 }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_processor_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_processor_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.acpi_processor* %8, %struct.acpi_processor** %5, align 8
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %10 = icmp ne %struct.acpi_processor* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %80

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %75 [
    i32 130, label %14
    i32 129, label %45
    i32 128, label %60
  ]

14:                                               ; preds = %12
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %19 = call i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %79

26:                                               ; preds = %14
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %27, i32 %28, i32 %31)
  %33 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 0
  %39 = call i32 @dev_name(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @acpi_bus_generate_netlink_event(i32 %36, i32 %39, i32 %40, i32 %43)
  br label %79

45:                                               ; preds = %12
  %46 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %47 = call i32 @acpi_processor_cst_has_changed(%struct.acpi_processor* %46)
  %48 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %48, i32 %49, i32 0)
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 0
  %57 = call i32 @dev_name(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @acpi_bus_generate_netlink_event(i32 %54, i32 %57, i32 %58, i32 0)
  br label %79

60:                                               ; preds = %12
  %61 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %62 = call i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %61)
  %63 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %63, i32 %64, i32 0)
  %66 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 0
  %72 = call i32 @dev_name(i32* %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @acpi_bus_generate_netlink_event(i32 %69, i32 %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %12, %60
  %76 = load i32, i32* @ACPI_DB_INFO, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ACPI_DEBUG_PRINT(i32 %77)
  br label %79

79:                                               ; preds = %75, %45, %26, %25
  br label %80

80:                                               ; preds = %79, %11
  ret void
}

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_processor_cst_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
