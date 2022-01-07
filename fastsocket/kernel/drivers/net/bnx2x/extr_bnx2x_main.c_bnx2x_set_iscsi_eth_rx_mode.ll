; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_iscsi_eth_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_iscsi_eth_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_ISCSI_ETH_CL_ID_IDX = common dso_local global i32 0, align 4
@BNX2X_FILTER_ISCSI_ETH_STOP_SCHED = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_UNICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@BNX2X_FILTER_ISCSI_ETH_START_SCHED = common dso_local global i32 0, align 4
@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@RAMROD_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_set_iscsi_eth_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_iscsi_eth_rx_mode(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load i32, i32* @BNX2X_ISCSI_ETH_CL_ID_IDX, align 4
  %11 = call i32 @bnx2x_cnic_eth_cl_id(%struct.bnx2x* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @BNX2X_FILTER_ISCSI_ETH_STOP_SCHED, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %17 = call i32 @__set_bit(i32 %16, i64* %5)
  %18 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %19 = call i32 @__set_bit(i32 %18, i64* %5)
  %20 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %21 = call i32 @__set_bit(i32 %20, i64* %5)
  %22 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %23 = call i32 @__set_bit(i32 %22, i64* %5)
  %24 = load i32, i32* @BNX2X_FILTER_ISCSI_ETH_STOP_SCHED, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @BNX2X_FILTER_ISCSI_ETH_START_SCHED, align 4
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @BNX2X_FILTER_ISCSI_ETH_START_SCHED, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %15
  %35 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %53

45:                                               ; preds = %34
  %46 = load i32, i32* @RAMROD_RX, align 4
  %47 = call i32 @__set_bit(i32 %46, i64* %6)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @bnx2x_set_q_rx_mode(%struct.bnx2x* %48, i32 %49, i32 0, i64 %50, i32 0, i64 %51)
  br label %53

53:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @bnx2x_cnic_eth_cl_id(%struct.bnx2x*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_set_q_rx_mode(%struct.bnx2x*, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
