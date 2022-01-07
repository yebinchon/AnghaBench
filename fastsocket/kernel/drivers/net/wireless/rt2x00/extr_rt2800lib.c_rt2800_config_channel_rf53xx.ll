; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf53xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf53xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i8, i8, i32, i32 }
%struct.channel_info = type { i64, i32 }

@RFCSR11_R = common dso_local global i32 0, align 4
@POWER_BOUND = common dso_local global i64 0, align 8
@RFCSR49_TX = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RFCSR50_TX = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@RFCSR1_PLL_PD = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@REV_RT5390F = common dso_local global i32 0, align 4
@rt2800_config_channel_rf53xx.r55_bt_rev = internal constant [14 x i8] c"\83\83\83sscSSSCCCCC", align 1
@rt2800_config_channel_rf53xx.r59_bt_rev = internal constant [14 x i8] c"\0E\0E\0E\0E\0E\0B\0A\09\07\07\07\07\07\07", align 1
@rt2800_config_channel_rf53xx.r59_bt = internal constant [14 x i8] c"\8B\8B\8B\8B\8B\8B\8B\8A\89\88\88\86\85\84", align 1
@rt2800_config_channel_rf53xx.r55_nonbt_rev = internal constant [14 x i8] c"####\13\13\03\03\03\03\03\03\03\03", align 1
@rt2800_config_channel_rf53xx.r59_nonbt_rev = internal constant [14 x i8] c"\07\07\07\07\07\07\07\07\07\07\06\05\04\04", align 1
@rt2800_config_channel_rf53xx.r59_non_bt = internal constant [14 x i8] c"\8F\8F\8F\8F\8F\8F\8F\8D\8A\88\88\87\87\86", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf53xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf53xx(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %12 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %13 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 8, i8 signext %14)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %18 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %16, i32 9, i8 signext %19)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %22 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %21, i32 11, i8* %9)
  %23 = load i32, i32* @RFCSR11_R, align 4
  %24 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %25 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rt2x00_set_field8(i8* %9, i32 %23, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = load i8, i8* %9, align 1
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 11, i8 signext %29)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %31, i32 49, i8* %9)
  %33 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %34 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @POWER_BOUND, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i32, i32* @RFCSR49_TX, align 4
  %40 = load i64, i64* @POWER_BOUND, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @rt2x00_set_field8(i8* %9, i32 %39, i32 %41)
  br label %50

43:                                               ; preds = %4
  %44 = load i32, i32* @RFCSR49_TX, align 4
  %45 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %46 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @rt2x00_set_field8(i8* %9, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %52 = load i8, i8* %9, align 1
  %53 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %51, i32 49, i8 signext %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %55 = load i32, i32* @RT5392, align 4
  %56 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %50
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %60 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %59, i32 50, i8* %9)
  %61 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %62 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @POWER_BOUND, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @RFCSR50_TX, align 4
  %68 = load i64, i64* @POWER_BOUND, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @rt2x00_set_field8(i8* %9, i32 %67, i32 %69)
  br label %77

71:                                               ; preds = %58
  %72 = load i32, i32* @RFCSR50_TX, align 4
  %73 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %74 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @rt2x00_set_field8(i8* %9, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %79 = load i8, i8* %9, align 1
  %80 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %78, i32 50, i8 signext %79)
  br label %81

81:                                               ; preds = %77, %50
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %83 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %82, i32 1, i8* %9)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %85 = load i32, i32* @RT5392, align 4
  %86 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %90 = call i32 @rt2x00_set_field8(i8* %9, i32 %89, i32 1)
  %91 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %92 = call i32 @rt2x00_set_field8(i8* %9, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %95 = call i32 @rt2x00_set_field8(i8* %9, i32 %94, i32 1)
  %96 = load i32, i32* @RFCSR1_PLL_PD, align 4
  %97 = call i32 @rt2x00_set_field8(i8* %9, i32 %96, i32 1)
  %98 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %99 = call i32 @rt2x00_set_field8(i8* %9, i32 %98, i32 1)
  %100 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %101 = call i32 @rt2x00_set_field8(i8* %9, i32 %100, i32 1)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %103 = load i8, i8* %9, align 1
  %104 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %102, i32 1, i8 signext %103)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %106 = call i32 @rt2800_adjust_freq_offset(%struct.rt2x00_dev* %105)
  %107 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %108 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %109, 14
  br i1 %110, label %111, label %187

111:                                              ; preds = %93
  %112 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %113 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %118 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %117, i32 0, i32 0
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %111
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = load i32, i32* @RT5390, align 4
  %124 = load i32, i32* @REV_RT5390F, align 4
  %125 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [14 x i8], [14 x i8]* @rt2800_config_channel_rf53xx.r55_bt_rev, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %128, i32 55, i8 signext %132)
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [14 x i8], [14 x i8]* @rt2800_config_channel_rf53xx.r59_bt_rev, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %134, i32 59, i8 signext %138)
  br label %147

140:                                              ; preds = %121
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [14 x i8], [14 x i8]* @rt2800_config_channel_rf53xx.r59_bt, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %141, i32 59, i8 signext %145)
  br label %147

147:                                              ; preds = %140, %127
  br label %186

148:                                              ; preds = %111
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %150 = load i32, i32* @RT5390, align 4
  %151 = load i32, i32* @REV_RT5390F, align 4
  %152 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %149, i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [14 x i8], [14 x i8]* @rt2800_config_channel_rf53xx.r55_nonbt_rev, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %155, i32 55, i8 signext %159)
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [14 x i8], [14 x i8]* @rt2800_config_channel_rf53xx.r59_nonbt_rev, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %161, i32 59, i8 signext %165)
  br label %185

167:                                              ; preds = %148
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %169 = load i32, i32* @RT5390, align 4
  %170 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %174 = load i32, i32* @RT5392, align 4
  %175 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172, %167
  %178 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [14 x i8], [14 x i8]* @rt2800_config_channel_rf53xx.r59_non_bt, i64 0, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %178, i32 59, i8 signext %182)
  br label %184

184:                                              ; preds = %177, %172
  br label %185

185:                                              ; preds = %184, %154
  br label %186

186:                                              ; preds = %185, %147
  br label %187

187:                                              ; preds = %186, %93
  ret void
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i8 signext) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i8*) #1

declare dso_local i32 @rt2x00_set_field8(i8*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_adjust_freq_offset(%struct.rt2x00_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
