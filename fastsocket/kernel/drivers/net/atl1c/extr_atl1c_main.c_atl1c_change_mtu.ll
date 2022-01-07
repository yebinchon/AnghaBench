; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32, %struct.TYPE_4__*, %struct.atl1c_hw, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.atl1c_hw = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@athr_l2c = common dso_local global i64 0, align 8
@athr_l2c_b = common dso_local global i64 0, align 8
@athr_l2c_b2 = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid MTU setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@__AT_RESETTING = common dso_local global i32 0, align 4
@MAX_TSO_FRAME_SIZE = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @atl1c_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca %struct.atl1c_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.atl1c_adapter* %11, %struct.atl1c_adapter** %6, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 2
  store %struct.atl1c_hw* %13, %struct.atl1c_hw** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ETH_HLEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @ETH_FCS_LEN, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @VLAN_HLEN, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @athr_l2c, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %2
  %30 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %31 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @athr_l2c_b, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %37 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @athr_l2c_b2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %29, %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ETH_DATA_LEN, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ETH_ZLEN, align 4
  %48 = load i32, i32* @ETH_FCS_LEN, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51, %45, %41
  %56 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %57 = call i64 @netif_msg_link(%struct.atl1c_adapter* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %141

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %140

72:                                               ; preds = %68
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i64 @netif_running(%struct.net_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %140

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %83, %76
  %78 = load i32, i32* @__AT_RESETTING, align 4
  %79 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %80 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %79, i32 0, i32 0
  %81 = call i64 @test_and_set_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @msleep(i32 1)
  br label %77

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @atl1c_set_rxbufsize(%struct.atl1c_adapter* %93, %struct.net_device* %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MAX_TSO_FRAME_SIZE, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %85
  %100 = load i32, i32* @NETIF_F_TSO, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @NETIF_F_TSO6, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %111 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %109
  store i32 %115, i32* %113, align 4
  br label %131

116:                                              ; preds = %85
  %117 = load i32, i32* @NETIF_F_TSO, align 4
  %118 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @NETIF_F_TSO6, align 4
  %125 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %116, %99
  %132 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %133 = call i32 @atl1c_down(%struct.atl1c_adapter* %132)
  %134 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %135 = call i32 @atl1c_up(%struct.atl1c_adapter* %134)
  %136 = load i32, i32* @__AT_RESETTING, align 4
  %137 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %137, i32 0, i32 0
  %139 = call i32 @clear_bit(i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %131, %72, %68
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %65
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1c_set_rxbufsize(%struct.atl1c_adapter*, %struct.net_device*) #1

declare dso_local i32 @atl1c_down(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_up(%struct.atl1c_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
