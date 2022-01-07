; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_init_hw_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_init_hw_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_TXDCTL_COUNT_DESC = common dso_local global i32 0, align 4
@GCR = common dso_local global i32 0, align 4
@E1000_GCR_L1_ACT_WITHOUT_L0S_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = call i32 @e1000_initialize_hw_bits_82571(%struct.e1000_hw* %13)
  %15 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.2*
  %21 = call i64 %18(%struct.e1000_hw.2* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %30, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = bitcast %struct.e1000_hw* %32 to %struct.e1000_hw.1*
  %34 = call i32 %31(%struct.e1000_hw.1* %33)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = call i64 @e1000e_get_laa_state_82571(%struct.e1000_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %38, %26
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @e1000e_init_rx_addrs(%struct.e1000_hw* %42, i64 %43)
  %45 = call i32 @e_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %57, %41
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* @E1000_MTA, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %53, i32 %54, i64 %55, i32 0)
  br label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %46

60:                                               ; preds = %46
  %61 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = bitcast %struct.e1000_hw* %65 to %struct.e1000_hw.0*
  %67 = call i64 %64(%struct.e1000_hw.0* %66)
  store i64 %67, i64* %5, align 8
  %68 = call i32 @TXDCTL(i32 0)
  %69 = call i32 @er32(i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %4, align 4
  %78 = call i32 @TXDCTL(i32 0)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @ew32(i32 %78, i32 %79)
  %81 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %96 [
    i32 130, label %84
    i32 129, label %87
    i32 128, label %87
  ]

84:                                               ; preds = %60
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = call i32 @e1000e_enable_tx_pkt_filtering(%struct.e1000_hw* %85)
  br label %87

87:                                               ; preds = %60, %60, %84
  %88 = load i32, i32* @GCR, align 4
  %89 = call i32 @er32(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @E1000_GCR_L1_ACT_WITHOUT_L0S_RX, align 4
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @GCR, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ew32(i32 %93, i32 %94)
  br label %110

96:                                               ; preds = %60
  %97 = call i32 @TXDCTL(i32 1)
  %98 = call i32 @er32(i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %4, align 4
  %107 = call i32 @TXDCTL(i32 1)
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @ew32(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %96, %87
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %112 = call i32 @e1000_clear_hw_cntrs_82571(%struct.e1000_hw* %111)
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

declare dso_local i32 @e1000_initialize_hw_bits_82571(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000e_get_laa_state_82571(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_init_rx_addrs(%struct.e1000_hw*, i64) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_enable_tx_pkt_filtering(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82571(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
