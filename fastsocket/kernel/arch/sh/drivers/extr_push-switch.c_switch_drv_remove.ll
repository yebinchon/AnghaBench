; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_push-switch.c_switch_drv_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_push-switch.c_switch_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.push_switch_platform_info* }
%struct.push_switch_platform_info = type { i64 }
%struct.push_switch = type { i32 }

@dev_attr_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @switch_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.push_switch*, align 8
  %4 = alloca %struct.push_switch_platform_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.push_switch* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.push_switch* %7, %struct.push_switch** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %10, align 8
  store %struct.push_switch_platform_info* %11, %struct.push_switch_platform_info** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %15 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @device_remove_file(%struct.TYPE_2__* %20, i32* @dev_attr_switch)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %23, i32* null)
  %25 = call i32 (...) @flush_scheduled_work()
  %26 = load %struct.push_switch*, %struct.push_switch** %3, align 8
  %27 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %26, i32 0, i32 0
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.platform_device* %30)
  %32 = load %struct.push_switch*, %struct.push_switch** %3, align 8
  %33 = call i32 @kfree(%struct.push_switch* %32)
  ret i32 0
}

declare dso_local %struct.push_switch* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.push_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
