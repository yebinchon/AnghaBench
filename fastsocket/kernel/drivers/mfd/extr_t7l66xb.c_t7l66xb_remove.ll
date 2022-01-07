; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_t7l66xb.c_t7l66xb_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_t7l66xb.c_t7l66xb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.t7l66xb_platform_data* }
%struct.t7l66xb_platform_data = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.t7l66xb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @t7l66xb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t7l66xb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.t7l66xb_platform_data*, align 8
  %4 = alloca %struct.t7l66xb*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.t7l66xb_platform_data*, %struct.t7l66xb_platform_data** %8, align 8
  store %struct.t7l66xb_platform_data* %9, %struct.t7l66xb_platform_data** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.t7l66xb* %11, %struct.t7l66xb** %4, align 8
  %12 = load %struct.t7l66xb_platform_data*, %struct.t7l66xb_platform_data** %3, align 8
  %13 = getelementptr inbounds %struct.t7l66xb_platform_data, %struct.t7l66xb_platform_data* %12, i32 0, i32 0
  %14 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %13, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = bitcast %struct.platform_device* %15 to %struct.platform_device.0*
  %17 = call i32 %14(%struct.platform_device.0* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %19 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable(i32 %20)
  %22 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %23 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_put(i32 %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = call i32 @t7l66xb_detach_irq(%struct.platform_device* %26)
  %28 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %29 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iounmap(i32 %30)
  %32 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %33 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %32, i32 0, i32 0
  %34 = call i32 @release_resource(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @mfd_remove_devices(%struct.TYPE_2__* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %38, i32* null)
  %40 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %41 = call i32 @kfree(%struct.t7l66xb* %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @t7l66xb_detach_irq(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @kfree(%struct.t7l66xb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
