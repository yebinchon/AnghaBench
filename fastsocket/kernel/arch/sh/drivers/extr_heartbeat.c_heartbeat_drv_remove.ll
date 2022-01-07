; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_heartbeat.c_heartbeat_drv_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_heartbeat.c_heartbeat_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.heartbeat_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @heartbeat_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heartbeat_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.heartbeat_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.heartbeat_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.heartbeat_data* %5, %struct.heartbeat_data** %3, align 8
  %6 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %7 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %6, i32 0, i32 1
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %10 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iounmap(i32 %11)
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = call i32 @platform_set_drvdata(%struct.platform_device* %13, i32* null)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %22 = call i32 @kfree(%struct.heartbeat_data* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local %struct.heartbeat_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @kfree(%struct.heartbeat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
