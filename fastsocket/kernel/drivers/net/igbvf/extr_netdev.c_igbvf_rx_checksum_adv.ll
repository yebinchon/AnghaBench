; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_rx_checksum_adv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_rx_checksum_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@IGBVF_FLAG_RX_CSUM_DISABLED = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_TCPE = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_IPE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_TCPCS = common dso_local global i32 0, align 4
@E1000_RXD_STAT_UDPCS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*, i32, %struct.sk_buff*)* @igbvf_rx_checksum_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_rx_checksum_adv(%struct.igbvf_adapter* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load i32, i32* @CHECKSUM_NONE, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IGBVF_FLAG_RX_CSUM_DISABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  br label %50

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @E1000_RXDEXT_STATERR_TCPE, align 4
  %25 = load i32, i32* @E1000_RXDEXT_STATERR_IPE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %50

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %37 = load i32, i32* @E1000_RXD_STAT_UDPCS, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %29, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
