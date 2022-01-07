; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32 }
%struct.ixgbevf_ring = type { i32 }
%struct.sk_buff = type { i32 }

@IXGBE_FLAG_RX_CSUM_ENABLED = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_IPCS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_IPE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_L4CS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_TCPE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32, %struct.sk_buff*)* @ixgbevf_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_rx_checksum(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.ixgbevf_adapter*, align 8
  %6 = alloca %struct.ixgbevf_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %5, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %10 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %9)
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IXGBE_FLAG_RX_CSUM_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %57

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IXGBE_RXD_STAT_IPCS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IXGBE_RXDADV_ERR_IPE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %57

33:                                               ; preds = %23, %18
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IXGBE_RXD_STAT_L4CS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %57

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IXGBE_RXDADV_ERR_TCPE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %57

49:                                               ; preds = %39
  %50 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %44, %38, %28, %17
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
