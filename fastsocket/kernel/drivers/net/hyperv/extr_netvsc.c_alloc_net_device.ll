; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_alloc_net_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_alloc_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32, i32, %struct.net_device*, %struct.hv_device*, i32 }
%struct.net_device = type { i32 }
%struct.hv_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netvsc_device* (%struct.hv_device*)* @alloc_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netvsc_device* @alloc_net_device(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.netvsc_device*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.netvsc_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %6 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %7 = call %struct.net_device* @hv_get_drvdata(%struct.hv_device* %6)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.netvsc_device* @kzalloc(i32 32, i32 %8)
  store %struct.netvsc_device* %9, %struct.netvsc_device** %4, align 8
  %10 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %11 = icmp ne %struct.netvsc_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.netvsc_device* null, %struct.netvsc_device** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 4
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %18 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %22 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %23 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %22, i32 0, i32 3
  store %struct.hv_device* %21, %struct.hv_device** %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %26 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %25, i32 0, i32 2
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %28 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %29 = call i32 @hv_set_drvdata(%struct.hv_device* %27, %struct.netvsc_device* %28)
  %30 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  store %struct.netvsc_device* %30, %struct.netvsc_device** %2, align 8
  br label %31

31:                                               ; preds = %13, %12
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  ret %struct.netvsc_device* %32
}

declare dso_local %struct.net_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.netvsc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.netvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
