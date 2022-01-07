; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_mitigate_mrc_cck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_mitigate_mrc_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@ar9003_hw_spur_mitigate_mrc_cck.spur_freq = internal constant [4 x i32] [i32 2420, i32 2440, i32 2464, i32 2480], align 16
@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_YCOK_MAX = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_spur_mitigate_mrc_cck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spur_mitigate_mrc_cck(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %15 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %14)
  %16 = call i64* @ar9003_get_spur_chan_ptr(%struct.ath_hw* %13, i32 %15)
  store i64* %16, i64** %12, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i64 @AR_SREV_9485(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i64 @AR_SREV_9330(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = call i64 @AR_SREV_9550(%struct.ath_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %28, %24, %20, %2
  %33 = load i64*, i64** %12, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %182

38:                                               ; preds = %32
  store i32 5, i32* %10, align 4
  %39 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %40 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  store i32 19, i32* %9, align 4
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %45 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %46 = call i64 @REG_READ_FIELD(%struct.ath_hw* %43, i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 10
  store i32 %52, i32* %11, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %55 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 10
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %63

59:                                               ; preds = %38
  store i32 10, i32* %9, align 4
  %60 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %61 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %58
  br label %73

64:                                               ; preds = %28
  %65 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %66 = call i64 @AR_SREV_9462(%struct.ath_hw* %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 5, i32 10
  store i32 %69, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %70 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %71 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %64, %63
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %166, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %169

78:                                               ; preds = %74
  %79 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %80 = call i64 @AR_SREV_9462(%struct.ath_hw* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %82
  br label %166

89:                                               ; preds = %85, %78
  store i32 0, i32* %6, align 4
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = call i64 @AR_SREV_9485(%struct.ath_hw* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = call i64 @AR_SREV_9340(%struct.ath_hw* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = call i64 @AR_SREV_9330(%struct.ath_hw* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = call i64 @AR_SREV_9550(%struct.ath_hw* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101, %97, %93, %89
  %106 = load i64*, i64** %12, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %112 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %111)
  %113 = call i32 @ath9k_hw_fbin2freq(i64 %110, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %119

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* @ar9003_hw_spur_mitigate_mrc_cck.spur_freq, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %105
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  store i32 1, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = shl i32 %133, 19
  %135 = sdiv i32 %134, 11
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 1048575
  store i32 %143, i32* %7, align 4
  %144 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %145 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %146 = load i32, i32* @AR_PHY_AGC_CONTROL_YCOK_MAX, align 4
  %147 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %144, i32 %145, i32 %146, i32 7)
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %150 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR, align 4
  %151 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %148, i32 %149, i32 %150, i32 127)
  %152 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %153 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %154 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE, align 4
  %155 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %152, i32 %153, i32 %154, i32 2)
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %158 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, align 4
  %159 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %156, i32 %157, i32 %158, i32 1)
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %162 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %160, i32 %161, i32 %162, i32 %163)
  br label %182

165:                                              ; preds = %128
  br label %166

166:                                              ; preds = %165, %88
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %74

169:                                              ; preds = %74
  %170 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %171 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %172 = load i32, i32* @AR_PHY_AGC_CONTROL_YCOK_MAX, align 4
  %173 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %170, i32 %171, i32 %172, i32 5)
  %174 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %175 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %176 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, align 4
  %177 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %174, i32 %175, i32 %176, i32 0)
  %178 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %179 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %180 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, align 4
  %181 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %178, i32 %179, i32 %180, i32 0)
  br label %182

182:                                              ; preds = %169, %141, %37
  ret void
}

declare dso_local i64* @ar9003_get_spur_chan_ptr(%struct.ath_hw*, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_fbin2freq(i64, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
