; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.jme_adapter = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@MAX_ETHERNET_JUMBO_PACKET_SIZE = common dso_local global i64 0, align 8
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RXCS_FIFOTHNP = common dso_local global i32 0, align 4
@RXCS_FIFOTHNP_64QW = common dso_local global i32 0, align 4
@RXCS_FIFOTHNP_128QW = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@JME_FLAG_TXCSUM = common dso_local global i32 0, align 4
@JME_FLAG_TSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @jme_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jme_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.jme_adapter* %8, %struct.jme_adapter** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @ETH_HLEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @MAX_ETHERNET_JUMBO_PACKET_SIZE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IPV6_MIN_MTU, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %15
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 4000
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* @RXCS_FIFOTHNP, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @RXCS_FIFOTHNP_64QW, align 4
  %40 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %45 = call i32 @jme_restart_rx_engine(%struct.jme_adapter* %44)
  br label %60

46:                                               ; preds = %29
  %47 = load i32, i32* @RXCS_FIFOTHNP, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @RXCS_FIFOTHNP_128QW, align 4
  %54 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %59 = call i32 @jme_restart_rx_engine(%struct.jme_adapter* %58)
  br label %60

60:                                               ; preds = %46, %32
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 1900
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %65 = load i32, i32* @NETIF_F_TSO, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NETIF_F_TSO6, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %101

74:                                               ; preds = %60
  %75 = load i32, i32* @JME_FLAG_TXCSUM, align 4
  %76 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %76, i32 0, i32 1
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @JME_FLAG_TSO, align 4
  %88 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %88, i32 0, i32 1
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load i32, i32* @NETIF_F_TSO, align 4
  %94 = load i32, i32* @NETIF_F_TSO6, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %86
  br label %101

101:                                              ; preds = %100, %63
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %106 = call i32 @jme_reset_link(%struct.jme_adapter* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %26, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jme_restart_rx_engine(%struct.jme_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jme_reset_link(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
