; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_rx_mode_set_cmd_state_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_rx_mode_set_cmd_state_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.eth_filter_rules_cmd = type { i32 }

@ETH_FILTER_RULES_CMD_UCAST_DROP_ALL = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_MCAST_DROP_ALL = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_UNICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_UNICAST = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_UNMATCHED = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64*, %struct.eth_filter_rules_cmd*, i32)* @bnx2x_rx_mode_set_cmd_state_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_rx_mode_set_cmd_state_e2(%struct.bnx2x* %0, i64* %1, %struct.eth_filter_rules_cmd* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.eth_filter_rules_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.eth_filter_rules_cmd* %2, %struct.eth_filter_rules_cmd** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_DROP_ALL, align 4
  %11 = load i32, i32* @ETH_FILTER_RULES_CMD_MCAST_DROP_ALL, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %14 = load i64*, i64** %6, align 8
  %15 = call i64 @test_bit(i32 %13, i64* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_DROP_ALL, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @BNX2X_ACCEPT_MULTICAST, align 4
  %24 = load i64*, i64** %6, align 8
  %25 = call i64 @test_bit(i32 %23, i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @ETH_FILTER_RULES_CMD_MCAST_DROP_ALL, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @BNX2X_ACCEPT_ALL_UNICAST, align 4
  %34 = load i64*, i64** %6, align 8
  %35 = call i64 @test_bit(i32 %33, i64* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_DROP_ALL, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %47 = load i64*, i64** %6, align 8
  %48 = call i64 @test_bit(i32 %46, i64* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @ETH_FILTER_RULES_CMD_MCAST_DROP_ALL, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %60 = load i64*, i64** %6, align 8
  %61 = call i64 @test_bit(i32 %59, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* @BNX2X_ACCEPT_UNMATCHED, align 4
  %69 = load i64*, i64** %6, align 8
  %70 = call i64 @test_bit(i32 %68, i64* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_DROP_ALL, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %82 = load i64*, i64** %6, align 8
  %83 = call i64 @test_bit(i32 %81, i64* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @ETH_FILTER_RULES_CMD_ACCEPT_ANY_VLAN, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i32, i32* @ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %92, %89
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @cpu_to_le16(i32 %110)
  %112 = load %struct.eth_filter_rules_cmd*, %struct.eth_filter_rules_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.eth_filter_rules_cmd, %struct.eth_filter_rules_cmd* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
