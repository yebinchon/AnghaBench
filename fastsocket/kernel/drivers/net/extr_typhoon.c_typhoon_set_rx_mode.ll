; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.typhoon = type { i32 }
%struct.cmd_desc = type { i32, i8*, i8* }

@TYPHOON_RX_FILTER_DIRECTED = common dso_local global i32 0, align 4
@TYPHOON_RX_FILTER_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@TYPHOON_RX_FILTER_PROMISCOUS = common dso_local global i32 0, align 4
@multicast_filter_limit = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@TYPHOON_RX_FILTER_ALL_MCAST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TYPHOON_CMD_SET_MULTICAST_HASH = common dso_local global i32 0, align 4
@TYPHOON_MCAST_HASH_SET = common dso_local global i32 0, align 4
@TYPHOON_RX_FILTER_MCAST_HASH = common dso_local global i32 0, align 4
@TYPHOON_CMD_SET_RX_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @typhoon_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.typhoon*, align 8
  %4 = alloca %struct.cmd_desc, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.typhoon* @netdev_priv(%struct.net_device* %10)
  store %struct.typhoon* %11, %struct.typhoon** %3, align 8
  %12 = load i32, i32* @TYPHOON_RX_FILTER_DIRECTED, align 4
  %13 = load i32, i32* @TYPHOON_RX_FILTER_BROADCAST, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @TYPHOON_RX_FILTER_PROMISCOUS, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %107

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @multicast_filter_limit, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IFF_ALLMULTI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31, %25
  %39 = load i32, i32* @TYPHOON_RX_FILTER_ALL_MCAST, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %106

42:                                               ; preds = %31
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %105

47:                                               ; preds = %42
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %49 = call i32 @memset(i32* %48, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load %struct.dev_mc_list*, %struct.dev_mc_list** %51, align 8
  store %struct.dev_mc_list* %52, %struct.dev_mc_list** %7, align 8
  br label %53

53:                                               ; preds = %81, %47
  %54 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %55 = icmp ne %struct.dev_mc_list* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br label %63

63:                                               ; preds = %56, %53
  %64 = phi i1 [ false, %53 ], [ %62, %56 ]
  br i1 %64, label %65, label %87

65:                                               ; preds = %63
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %68 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ether_crc(i32 %66, i32 %69)
  %71 = and i32 %70, 63
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 31
  %74 = shl i32 1, %73
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %74
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %85 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %84, i32 0, i32 1
  %86 = load %struct.dev_mc_list*, %struct.dev_mc_list** %85, align 8
  store %struct.dev_mc_list* %86, %struct.dev_mc_list** %7, align 8
  br label %53

87:                                               ; preds = %63
  %88 = load i32, i32* @TYPHOON_CMD_SET_MULTICAST_HASH, align 4
  %89 = call i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc* %4, i32 %88)
  %90 = load i32, i32* @TYPHOON_MCAST_HASH_SET, align 4
  %91 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %4, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %4, i32 0, i32 2
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %4, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %101 = call i32 @typhoon_issue_command(%struct.typhoon* %100, i32 1, %struct.cmd_desc* %4, i32 0, i32* null)
  %102 = load i32, i32* @TYPHOON_RX_FILTER_MCAST_HASH, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %87, %42
  br label %106

106:                                              ; preds = %105, %38
  br label %107

107:                                              ; preds = %106, %21
  %108 = load i32, i32* @TYPHOON_CMD_SET_RX_FILTER, align 4
  %109 = call i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc* %4, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %4, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %113 = call i32 @typhoon_issue_command(%struct.typhoon* %112, i32 1, %struct.cmd_desc* %4, i32 0, i32* null)
  ret void
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @typhoon_issue_command(%struct.typhoon*, i32, %struct.cmd_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
