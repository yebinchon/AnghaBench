; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_select_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.bnx2x = type { i32 }
%struct.ethhdr = type { i32 }
%struct.vlan_ethhdr = type { i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@ETH_P_FCOE = common dso_local global i64 0, align 8
@ETH_P_FIP = common dso_local global i64 0, align 8
@txq_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bnx2x_select_queue(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2x* %11, %struct.bnx2x** %6, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %13 = call i64 @CNIC_LOADED(%struct.bnx2x* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %17 = call i32 @NO_FCOE(%struct.bnx2x* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ethhdr*
  store %struct.ethhdr* %23, %struct.ethhdr** %7, align 8
  %24 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ntohs(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ETH_P_8021Q, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %35, %struct.vlan_ethhdr** %9, align 8
  %36 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %9, align 8
  %37 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %31, %19
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @ETH_P_FCOE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @ETH_P_FIP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %40
  %49 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %50 = load i32, i32* @txq_index, align 4
  %51 = call i64 @bnx2x_fcoe_tx(%struct.bnx2x* %49, i32 %50)
  store i64 %51, i64* %3, align 8
  br label %60

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %15, %2
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i64 @__netdev_pick_tx(%struct.net_device* %54, %struct.sk_buff* %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %58 = call i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %57)
  %59 = srem i64 %56, %58
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @bnx2x_fcoe_tx(%struct.bnx2x*, i32) #1

declare dso_local i64 @__netdev_pick_tx(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
