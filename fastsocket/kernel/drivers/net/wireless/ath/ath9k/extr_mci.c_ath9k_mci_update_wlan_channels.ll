; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_update_wlan_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_update_wlan_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.ath9k_channel*, %struct.TYPE_2__ }
%struct.ath9k_channel = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32* }

@__const.ath9k_mci_update_wlan_channels.channelmap = private unnamed_addr constant [4 x i32] [i32 0, i32 -65536, i32 -1, i32 2147483647], align 16
@CHANNEL_G_HT40PLUS = common dso_local global i64 0, align 8
@CHANNEL_G_HT40MINUS = common dso_local global i64 0, align 8
@ATH_MCI_NUM_BT_CHANNELS = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WLAN current channel %d mask BT channel %d - %d\0A\00", align 1
@MCI_STATE_SEND_VERSION_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_mci_update_wlan_channels(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_hw_mci*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ath9k_hw_mci* %18, %struct.ath9k_hw_mci** %6, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %20, align 8
  store %struct.ath9k_channel* %21, %struct.ath9k_channel** %7, align 8
  %22 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([4 x i32]* @__const.ath9k_mci_update_wlan_channels.channelmap to i8*), i64 16, i1 false)
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %24 = icmp ne %struct.ath9k_channel* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %27 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %2
  br label %121

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %97

34:                                               ; preds = %30
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %36 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 2402
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 10
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 10
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %44 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHANNEL_G_HT40PLUS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 20
  store i32 %50, i32* %11, align 4
  br label %61

51:                                               ; preds = %34
  %52 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %53 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHANNEL_G_HT40MINUS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 20
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 7
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 7
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ATH_MCI_NUM_BT_CHANNELS, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @ATH_MCI_NUM_BT_CHANNELS, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %78 = call i32 @ath9k_hw_common(%struct.ath_hw* %77)
  %79 = load i32, i32* @MCI, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @ath_dbg(i32 %78, i32 %79, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %93, %76
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = bitcast [4 x i32]* %8 to i32**
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @MCI_GPM_CLR_CHANNEL_BIT(i32** %90, i32 %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %85

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %33
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %107 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %98

115:                                              ; preds = %98
  %116 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %117 = call i32 @ar9003_mci_send_wlan_channels(%struct.ath_hw* %116)
  %118 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %119 = load i32, i32* @MCI_STATE_SEND_VERSION_QUERY, align 4
  %120 = call i32 @ar9003_mci_state(%struct.ath_hw* %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #2

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #2

declare dso_local i32 @MCI_GPM_CLR_CHANNEL_BIT(i32**, i32) #2

declare dso_local i32 @ar9003_mci_send_wlan_channels(%struct.ath_hw*) #2

declare dso_local i32 @ar9003_mci_state(%struct.ath_hw*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
