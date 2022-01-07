; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 (...)* }

@AR_RTC_DERIVED_CLK = common dso_local global i32 0, align 4
@AR_RTC_DERIVED_CLK_PERIOD = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AR_RTC_RC_MAC_WARM = common dso_local global i32 0, align 4
@AR_RTC_RC_MAC_COLD = common dso_local global i32 0, align 4
@AR_RTC_RC_COLD_RESET = common dso_local global i32 0, align 4
@AR_RTC_RC_WARM_RESET = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR9340_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_RC_HOSTIF = common dso_local global i32 0, align 4
@AR_RC_AHB = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@ATH9K_RESET_COLD = common dso_local global i32 0, align 4
@AR_NUM_QCU = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reset MAC via external reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"External reset failed, err=%d\0A\00", align 1
@AR_RTC_RESET = common dso_local global i32 0, align 4
@AR_RTC_RC = common dso_local global i32 0, align 4
@AR_RTC_RC_M = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"RTC stuck in MAC reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_set_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_set_reset(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = call i64 @AR_SREV_9100(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %18 = load i32, i32* @AR_RTC_DERIVED_CLK_PERIOD, align 4
  %19 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %16, i32 %17, i32 %18, i32 1)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %21 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %22 = call i32 @REG_READ(%struct.ath_hw* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %31 = load i32, i32* @AR_WA, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @REG_WRITE(%struct.ath_hw* %30, i32 %31, i32 %34)
  %36 = call i32 @udelay(i32 10)
  br label %37

37:                                               ; preds = %29, %23
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %40 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %41 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @REG_WRITE(%struct.ath_hw* %38, i32 %39, i32 %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = call i64 @AR_SREV_9100(%struct.ath_hw* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32, i32* @AR_RTC_RC_MAC_WARM, align 4
  %49 = load i32, i32* @AR_RTC_RC_MAC_COLD, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AR_RTC_RC_COLD_RESET, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AR_RTC_RC_WARM_RESET, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %112

55:                                               ; preds = %37
  %56 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %57 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %58 = call i32 @REG_READ(%struct.ath_hw* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = call i64 @AR_SREV_9340(%struct.ath_hw* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @AR9340_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @AR_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %68 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_TIMEOUT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %78 = call i32 @REG_WRITE(%struct.ath_hw* %76, i32 %77, i32 0)
  %79 = load i32, i32* @AR_RC_HOSTIF, align 4
  store i32 %79, i32* %8, align 4
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @AR_RC_AHB, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = load i32, i32* @AR_RC, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @REG_WRITE(%struct.ath_hw* %88, i32 %89, i32 %90)
  br label %102

92:                                               ; preds = %72
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %98 = load i32, i32* @AR_RC, align 4
  %99 = load i32, i32* @AR_RC_AHB, align 4
  %100 = call i32 @REG_WRITE(%struct.ath_hw* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* @AR_RTC_RC_MAC_WARM, align 4
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ATH9K_RESET_COLD, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @AR_RTC_RC_MAC_COLD, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %111, %47
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = call i64 @AR_SREV_9330(%struct.ath_hw* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %165

116:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @AR_NUM_QCU, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @ath9k_hw_numtxpending(%struct.ath_hw* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %132

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %117

132:                                              ; preds = %127, %117
  %133 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 1
  %135 = load i32 (...)*, i32 (...)** %134, align 8
  %136 = icmp ne i32 (...)* %135, null
  br i1 %136, label %137, label %164

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @ATH9K_RESET_COLD, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %140, %137
  store i32 0, i32* %11, align 4
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = call i32 @ath9k_hw_common(%struct.ath_hw* %145)
  %147 = load i32, i32* @RESET, align 4
  %148 = call i32 @ath_dbg(i32 %146, i32 %147, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %149 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %150 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %149, i32 0, i32 1
  %151 = load i32 (...)*, i32 (...)** %150, align 8
  %152 = call i32 (...) %151()
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %144
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = call i32 @ath9k_hw_common(%struct.ath_hw* %156)
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @ath_err(i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  store i32 0, i32* %3, align 4
  br label %209

160:                                              ; preds = %144
  %161 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %162 = load i32, i32* @AR_RTC_RESET, align 4
  %163 = call i32 @REG_WRITE(%struct.ath_hw* %161, i32 %162, i32 1)
  br label %164

164:                                              ; preds = %160, %140, %132
  br label %165

165:                                              ; preds = %164, %112
  %166 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %167 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %171 = call i32 @ar9003_mci_check_gpm_offset(%struct.ath_hw* %170)
  br label %172

172:                                              ; preds = %169, %165
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = load i32, i32* @AR_RTC_RC, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @REG_WRITE(%struct.ath_hw* %173, i32 %174, i32 %175)
  %177 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %178 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %177)
  %179 = call i32 @udelay(i32 50)
  %180 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %181 = load i32, i32* @AR_RTC_RC, align 4
  %182 = call i32 @REG_WRITE(%struct.ath_hw* %180, i32 %181, i32 0)
  %183 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %184 = load i32, i32* @AR_RTC_RC, align 4
  %185 = load i32, i32* @AR_RTC_RC_M, align 4
  %186 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %187 = call i32 @ath9k_hw_wait(%struct.ath_hw* %183, i32 %184, i32 %185, i32 0, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %172
  %190 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %191 = call i32 @ath9k_hw_common(%struct.ath_hw* %190)
  %192 = load i32, i32* @RESET, align 4
  %193 = call i32 @ath_dbg(i32 %191, i32 %192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %209

194:                                              ; preds = %172
  %195 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %196 = call i64 @AR_SREV_9100(%struct.ath_hw* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %200 = load i32, i32* @AR_RC, align 4
  %201 = call i32 @REG_WRITE(%struct.ath_hw* %199, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %198, %194
  %203 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %204 = call i64 @AR_SREV_9100(%struct.ath_hw* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = call i32 @udelay(i32 50)
  br label %208

208:                                              ; preds = %206, %202
  store i32 1, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %189, %155
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_numtxpending(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_check_gpm_offset(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
