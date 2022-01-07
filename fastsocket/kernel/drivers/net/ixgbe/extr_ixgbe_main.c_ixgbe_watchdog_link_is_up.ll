; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_link_is_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, i32, i32, i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@IXGBE_FLAG2_SEARCH_FOR_SFP = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i64 0, align 8
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i64 0, align 8
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i64 0, align 8
@IXGBE_FCCFG_TFCE_802_3X = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NIC Link is Up %s, Flow Control: %s\0A\00", align 1
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"10 Gbps\00", align 1
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"1 Gbps\00", align 1
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"100 Mbps\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unknown speed\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"RX/TX\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@__IXGBE_PTP_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_watchdog_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_watchdog_link_is_up(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 5
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %3, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 4
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %4, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i64 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %127

24:                                               ; preds = %1
  %25 = load i32, i32* @IXGBE_FLAG2_SEARCH_FOR_SFP, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %77 [
    i32 130, label %35
    i32 128, label %56
    i32 129, label %56
  ]

35:                                               ; preds = %24
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = load i32, i32* @IXGBE_FCTRL, align 4
  %38 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %36, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = load i32, i32* @IXGBE_RMCS, align 4
  %41 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %78

56:                                               ; preds = %24, %24
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %58 = load i32, i32* @IXGBE_MFLCN, align 4
  %59 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %61 = load i32, i32* @IXGBE_FCCFG, align 4
  %62 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %60, i32 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @IXGBE_MFLCN_RFCE, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @IXGBE_FCCFG_TFCE_802_3X, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %7, align 4
  br label %78

77:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %56, %35
  %79 = load i32, i32* @drv, align 4
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @IXGBE_LINK_SPEED_10GB_FULL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %97

84:                                               ; preds = %78
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %95

89:                                               ; preds = %84
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @IXGBE_LINK_SPEED_100_FULL, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  br label %95

95:                                               ; preds = %89, %88
  %96 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %88 ], [ %94, %89 ]
  br label %97

97:                                               ; preds = %95, %83
  %98 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %83 ], [ %96, %95 ]
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %116

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  br label %114

114:                                              ; preds = %109, %108
  %115 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %108 ], [ %113, %109 ]
  br label %116

116:                                              ; preds = %114, %104
  %117 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %104 ], [ %115, %114 ]
  %118 = call i32 @e_info(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %117)
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @netif_carrier_on(%struct.net_device* %119)
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %122 = call i32 @ixgbe_check_vf_rate_limit(%struct.ixgbe_adapter* %121)
  %123 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %124 = call i32 @ixgbe_update_default_up(%struct.ixgbe_adapter* %123)
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %126 = call i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter* %125)
  br label %127

127:                                              ; preds = %116, %23
  ret void
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @e_info(i32, i8*, i8*, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @ixgbe_check_vf_rate_limit(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_update_default_up(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
