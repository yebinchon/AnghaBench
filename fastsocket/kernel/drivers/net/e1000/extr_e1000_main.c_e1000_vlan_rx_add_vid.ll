; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT = common dso_local global i32 0, align 4
@VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @e1000_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_vlan_rx_add_vid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %5, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 1
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %44

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 5
  %30 = and i32 %29, 127
  store i32 %30, i32* %8, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %32 = load i32, i32* @VFTA, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 31
  %37 = shl i32 1, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @e1000_write_vfta(%struct.e1000_hw* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_write_vfta(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
