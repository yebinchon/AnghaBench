; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1e_adapter = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid MTU setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@__AT_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @atl1e_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atl1e_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.atl1e_adapter* %10, %struct.atl1e_adapter** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ETH_HLEN, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @ETH_FCS_LEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @VLAN_HLEN, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ETH_ZLEN, align 4
  %23 = load i32, i32* @ETH_FCS_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %2
  %31 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i64 @netif_running(%struct.net_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i32, i32* @__AT_RESETTING, align 4
  %49 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %49, i32 0, i32 0
  %51 = call i64 @test_and_set_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @msleep(i32 1)
  br label %47

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 7
  %65 = ashr i32 %64, 3
  %66 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %70 = call i32 @atl1e_down(%struct.atl1e_adapter* %69)
  %71 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %72 = call i32 @atl1e_up(%struct.atl1e_adapter* %71)
  %73 = load i32, i32* @__AT_RESETTING, align 4
  %74 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %55, %42, %38
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %30
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1e_down(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_up(%struct.atl1e_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
