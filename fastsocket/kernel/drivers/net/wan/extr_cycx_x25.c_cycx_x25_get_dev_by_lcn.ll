; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_get_dev_by_lcn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_get_dev_by_lcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wan_device = type { %struct.net_device* }
%struct.cycx_x25_channel = type { i64, %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.wan_device*, i64)* @cycx_x25_get_dev_by_lcn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @cycx_x25_get_dev_by_lcn(%struct.wan_device* %0, i64 %1) #0 {
  %3 = alloca %struct.wan_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cycx_x25_channel*, align 8
  store %struct.wan_device* %0, %struct.wan_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.wan_device*, %struct.wan_device** %3, align 8
  %8 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.cycx_x25_channel* @netdev_priv(%struct.net_device* %14)
  store %struct.cycx_x25_channel* %15, %struct.cycx_x25_channel** %6, align 8
  %16 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %17 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %24 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %23, i32 0, i32 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %5, align 8
  br label %10

26:                                               ; preds = %21, %10
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %27
}

declare dso_local %struct.cycx_x25_channel* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
