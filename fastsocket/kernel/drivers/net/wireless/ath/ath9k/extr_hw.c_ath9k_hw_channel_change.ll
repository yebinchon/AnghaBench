; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_channel_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_channel_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ath9k_channel = type { i32, i64 }
%struct.ath_common = type { i32 }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@CHANNEL_2GHZ = common dso_local global i32 0, align 4
@CHANNEL_5GHZ = common dso_local global i32 0, align 4
@AR_NUM_QCU = common dso_local global i64 0, align 8
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Transmit frames pending on queue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not kill baseband RX\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to do fast channel change\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to set channel\0A\00", align 1
@AH_FASTCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_channel_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_channel_change(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %6, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CHANNEL_2GHZ, align 4
  %29 = load i32, i32* @CHANNEL_5GHZ, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CHANNEL_2GHZ, align 4
  %38 = load i32, i32* @CHANNEL_5GHZ, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %31, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %44 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %68, %2
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @AR_NUM_QCU, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @ath9k_hw_numtxpending(%struct.ath_hw* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %64 = load i32, i32* @QUEUE, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ath_dbg(%struct.ath_common* %63, i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %65)
  store i32 0, i32* %3, align 4
  br label %186

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %53

71:                                               ; preds = %53
  %72 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %73 = call i32 @ath9k_hw_rfbus_req(%struct.ath_hw* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %77 = call i32 @ath_err(%struct.ath_common* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84, %81
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = call i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw* %88)
  %90 = call i32 @udelay(i32 5)
  %91 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %92 = call i32 @ath9k_hw_init_pll(%struct.ath_hw* %91, i32* null)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %95 = call i64 @ath9k_hw_fast_chan_change(%struct.ath_hw* %93, %struct.ath9k_channel* %94, i64* %12)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %99 = call i32 @ath_err(%struct.ath_common* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %84, %78
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %104 = call i32 @ath9k_hw_set_channel_regs(%struct.ath_hw* %102, %struct.ath9k_channel* %103)
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %107 = call i32 @ath9k_hw_rf_set_freq(%struct.ath_hw* %105, %struct.ath9k_channel* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %112 = call i32 @ath_err(%struct.ath_common* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

113:                                              ; preds = %101
  %114 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %115 = call i32 @ath9k_hw_set_clockrate(%struct.ath_hw* %114)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %117 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %118 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %116, %struct.ath9k_channel* %117, i32 0)
  %119 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %120 = call i32 @ath9k_hw_rfbus_done(%struct.ath_hw* %119)
  %121 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %122 = call i64 @IS_CHAN_OFDM(%struct.ath9k_channel* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %113
  %125 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %126 = call i64 @IS_CHAN_HT(%struct.ath9k_channel* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124, %113
  %129 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %130 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %131 = call i32 @ath9k_hw_set_delta_slope(%struct.ath_hw* %129, %struct.ath9k_channel* %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %134 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %135 = call i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw* %133, %struct.ath9k_channel* %134)
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %185

138:                                              ; preds = %132
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %185

144:                                              ; preds = %141, %138
  %145 = load i32, i32* @AH_FASTCC, align 4
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i64, i64* %12, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152, %144
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = bitcast {}** %159 to i32 (%struct.ath_hw*, %struct.ath9k_channel*)**
  %161 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %160, align 8
  %162 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %163 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %164 = call i32 %161(%struct.ath_hw* %162, %struct.ath9k_channel* %163)
  br label %165

165:                                              ; preds = %155, %152
  %166 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %167 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %168 = call i32 @ath9k_hw_init_bb(%struct.ath_hw* %166, %struct.ath9k_channel* %167)
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = load i64, i64* %12, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171, %165
  %175 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %176 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %177 = call i32 @ath9k_hw_init_cal(%struct.ath_hw* %175, %struct.ath9k_channel* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* @AH_FASTCC, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %182 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %178, %141, %132
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %110, %97, %75, %62
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_numtxpending(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @ath9k_hw_rfbus_req(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_init_pll(%struct.ath_hw*, i32*) #1

declare dso_local i64 @ath9k_hw_fast_chan_change(%struct.ath_hw*, %struct.ath9k_channel*, i64*) #1

declare dso_local i32 @ath9k_hw_set_channel_regs(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_rf_set_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_clockrate(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath9k_hw_rfbus_done(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_OFDM(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_delta_slope(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_init_bb(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_init_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
