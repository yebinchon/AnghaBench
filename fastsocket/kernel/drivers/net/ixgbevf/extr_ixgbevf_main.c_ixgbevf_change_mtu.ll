; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@MAXIMUM_ETHERNET_VLAN_SIZE = common dso_local global i32 0, align 4
@IXGBE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@ixgbe_mac_X540_vf = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbevf_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbevf_adapter* %10, %struct.ixgbevf_adapter** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ETH_HLEN, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @ETH_FCS_LEN, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @MAXIMUM_ETHERNET_VLAN_SIZE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %23 [
    i32 128, label %21
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @IXGBE_MAX_JUMBO_FRAME_SIZE, align 4
  store i32 %22, i32* %8, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ixgbe_mac_X540_vf, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @IXGBE_MAX_JUMBO_FRAME_SIZE, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %23
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 68
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %37
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 0
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @hw_dbg(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i64 @netif_running(%struct.net_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %60 = call i32 @ixgbevf_reinit_locked(%struct.ixgbevf_adapter* %59)
  br label %61

61:                                               ; preds = %58, %44
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hw_dbg(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_reinit_locked(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
