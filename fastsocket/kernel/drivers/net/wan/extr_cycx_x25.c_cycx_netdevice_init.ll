; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_netdevice_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_netdevice_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32, i32, i32, i32, i32, i64 }
%struct.cycx_x25_channel = type { i32, i32, %struct.cycx_device* }
%struct.cycx_device = type { %struct.wan_device }
%struct.wan_device = type { i32, i32, i32, i32, i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@WAN_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cycx_netdevice_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycx_netdevice_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cycx_x25_channel*, align 8
  %4 = alloca %struct.cycx_device*, align 8
  %5 = alloca %struct.wan_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cycx_x25_channel* @netdev_priv(%struct.net_device* %6)
  store %struct.cycx_x25_channel* %7, %struct.cycx_x25_channel** %3, align 8
  %8 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %3, align 8
  %9 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %8, i32 0, i32 2
  %10 = load %struct.cycx_device*, %struct.cycx_device** %9, align 8
  store %struct.cycx_device* %10, %struct.cycx_device** %4, align 8
  %11 = load %struct.cycx_device*, %struct.cycx_device** %4, align 8
  %12 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %11, i32 0, i32 0
  store %struct.wan_device* %12, %struct.wan_device** %5, align 8
  %13 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %3, align 8
  %14 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %3, align 8
  %19 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @htons(i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.wan_device*, %struct.wan_device** %5, align 8
  %28 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.wan_device*, %struct.wan_device** %5, align 8
  %33 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wan_device*, %struct.wan_device** %5, align 8
  %38 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.wan_device*, %struct.wan_device** %5, align 8
  %43 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.wan_device*, %struct.wan_device** %5, align 8
  %49 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wan_device*, %struct.wan_device** %5, align 8
  %52 = getelementptr inbounds %struct.wan_device, %struct.wan_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @IFF_NOARP, align 4
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 2
  store i32 10, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* @WAN_DISCONNECTED, align 4
  %68 = call i32 @cycx_x25_set_chan_state(%struct.net_device* %66, i32 %67)
  ret i32 0
}

declare dso_local %struct.cycx_x25_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @cycx_x25_set_chan_state(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
