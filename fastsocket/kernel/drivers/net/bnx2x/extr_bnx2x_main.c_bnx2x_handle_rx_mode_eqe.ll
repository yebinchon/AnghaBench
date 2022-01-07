; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_handle_rx_mode_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_handle_rx_mode_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }

@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@BNX2X_FILTER_RX_MODE_SCHED = common dso_local global i32 0, align 4
@BNX2X_FILTER_ISCSI_ETH_START_SCHED = common dso_local global i32 0, align 4
@BNX2X_FILTER_ISCSI_ETH_STOP_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_handle_rx_mode_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_handle_rx_mode_eqe(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netif_addr_lock_bh(i32 %5)
  %7 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @BNX2X_FILTER_RX_MODE_SCHED, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 1
  %14 = call i64 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x* %17)
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @BNX2X_FILTER_ISCSI_ETH_START_SCHED, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 1
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = call i32 @bnx2x_set_iscsi_eth_rx_mode(%struct.bnx2x* %26, i32 1)
  br label %38

28:                                               ; preds = %19
  %29 = load i32, i32* @BNX2X_FILTER_ISCSI_ETH_STOP_SCHED, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 1
  %32 = call i64 @test_and_clear_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = call i32 @bnx2x_set_iscsi_eth_rx_mode(%struct.bnx2x* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %25
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_addr_unlock_bh(i32 %42)
  ret void
}

declare dso_local i32 @netif_addr_lock_bh(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_iscsi_eth_rx_mode(%struct.bnx2x*, i32) #1

declare dso_local i32 @netif_addr_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
