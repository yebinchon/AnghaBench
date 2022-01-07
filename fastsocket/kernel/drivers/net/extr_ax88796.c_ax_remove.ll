; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ax_device = type { i32, i64, i32 }

@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ax_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ax_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %7)
  store %struct.ax_device* %8, %struct.ax_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.net_device* %14)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 8
  %17 = call i32 @iounmap(i64 %16)
  %18 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %19 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @release_resource(i32 %20)
  %22 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %23 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %27 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %32 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @iounmap(i64 %33)
  %35 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %36 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @release_resource(i32 %37)
  %39 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %40 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kfree(i32 %41)
  br label %43

43:                                               ; preds = %30, %1
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @free_netdev(%struct.net_device* %44)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
