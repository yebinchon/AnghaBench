; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.rtl8169_private = type { i64 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@rtl_chip_infos = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@TD_MSS_MAX = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@JUMBO_1K = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rtl8169_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8169_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rtl8169_private* %8, %struct.rtl8169_private** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ETH_ZLEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl_chip_infos, align 8
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %16 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %13, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ETH_DATA_LEN, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %31 = call i32 @rtl_hw_jumbo_enable(%struct.rtl8169_private* %30)
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %34 = call i32 @rtl_hw_jumbo_disable(%struct.rtl8169_private* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TD_MSS_MAX, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i32, i32* @NETIF_F_TSO, align 4
  %46 = load i32, i32* @NETIF_F_TSO6, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44, %35
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @JUMBO_1K, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl_chip_infos, align 8
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %64 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %61, %55
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl_hw_jumbo_enable(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_hw_jumbo_disable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
