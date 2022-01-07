; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_get_dev_by_dte_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_get_dev_by_dte_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wan_device = type { %struct.net_device* }
%struct.cycx_x25_channel = type { %struct.net_device*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.wan_device*, i8*)* @cycx_x25_get_dev_by_dte_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @cycx_x25_get_dev_by_dte_addr(%struct.wan_device* %0, i8* %1) #0 {
  %3 = alloca %struct.wan_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cycx_x25_channel*, align 8
  store %struct.wan_device* %0, %struct.wan_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wan_device*, %struct.wan_device** %3, align 8
  %8 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.cycx_x25_channel* @netdev_priv(%struct.net_device* %14)
  store %struct.cycx_x25_channel* %15, %struct.cycx_x25_channel** %6, align 8
  %16 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %17 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcmp(i32 %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %25 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %5, align 8
  br label %10

27:                                               ; preds = %22, %10
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %28
}

declare dso_local %struct.cycx_x25_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
