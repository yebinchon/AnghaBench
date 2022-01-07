; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_process_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_process_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.ath9k_channel = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH_INI_NUM_SPLIT = common dso_local global i32 0, align 4
@ATH_INI_POST = common dso_local global i32 0, align 4
@AR_GLB_SWREG_DISCONT_MODE = common dso_local global i32 0, align 4
@AR_GLB_SWREG_DISCONT_EN_BT_WLAN = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL = common dso_local global i32 0, align 4
@TX_IQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@TX_CL_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_process_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_process_ini(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %11 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 136, label %13
    i32 135, label %13
    i32 133, label %14
    i32 134, label %14
    i32 131, label %15
    i32 130, label %15
    i32 132, label %15
    i32 128, label %16
    i32 129, label %16
  ]

13:                                               ; preds = %2, %2
  store i32 1, i32* %8, align 4
  br label %20

14:                                               ; preds = %2, %2
  store i32 2, i32* %8, align 4
  br label %20

15:                                               ; preds = %2, %2, %2
  store i32 4, i32* %8, align 4
  br label %20

16:                                               ; preds = %2, %2
  store i32 3, i32* %8, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %224

20:                                               ; preds = %16, %15, %14, %13
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %76, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ATH_INI_NUM_SPLIT, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 14
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %26, i32* %32, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 13
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %35, i32* %41, i32 %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 12
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %44, i32* %50, i32 %51)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 11
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %53, i32* %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ATH_INI_POST, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %25
  %66 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %67 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 10
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %70, i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %65, %25
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 9
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @REG_WRITE_ARRAY(i32* %81, i32 1, i32 %82)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %85 = call i64 @AR_SREV_9550(%struct.ath_hw* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @REG_WRITE_ARRAY(i32* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %95 = call i64 @AR_SREV_9550(%struct.ath_hw* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %99 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %100 = call i32 @ar9550_hw_get_modes_txgain_index(%struct.ath_hw* %98, %struct.ath9k_channel* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %224

106:                                              ; preds = %97
  %107 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %108 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %107, i32 0, i32 7
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @REG_WRITE_ARRAY(i32* %108, i32 %109, i32 %110)
  br label %118

112:                                              ; preds = %93
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 7
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @REG_WRITE_ARRAY(i32* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %120 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %121 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %119, %struct.ath9k_channel* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %124, i32 0, i32 6
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @REG_WRITE_ARRAY(i32* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %130, i32 0, i32 5
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @REG_WRITE_ARRAY(i32* %131, i32 1, i32 %132)
  %134 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %135 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 2484
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %140 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %141 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %140, i32 0, i32 4
  %142 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %139, i32* %141, i32 1)
  br label %143

143:                                              ; preds = %138, %129
  %144 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %145 = call i64 @AR_SREV_9462(%struct.ath_hw* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %149 = call i64 @AR_SREV_9565(%struct.ath_hw* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147, %143
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = load i32, i32* @AR_GLB_SWREG_DISCONT_MODE, align 4
  %154 = load i32, i32* @AR_GLB_SWREG_DISCONT_EN_BT_WLAN, align 4
  %155 = call i32 @REG_WRITE(%struct.ath_hw* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %147
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %159 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %161 = call i32 @ar9003_hw_override_ini(%struct.ath_hw* %160)
  %162 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %163 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %164 = call i32 @ar9003_hw_set_channel_regs(%struct.ath_hw* %162, %struct.ath9k_channel* %163)
  %165 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %166 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %167 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %170 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %165, i32 %168, i32 %171)
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %175 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %173, %struct.ath9k_channel* %174, i32 0)
  %176 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %177 = call i64 @AR_SREV_9462(%struct.ath_hw* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %156
  %180 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %181 = call i64 @AR_SREV_9565(%struct.ath_hw* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %223

183:                                              ; preds = %179, %156
  %184 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %185 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %186 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %187 = call i64 @REG_READ_FIELD(%struct.ath_hw* %184, i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32, i32* @TX_IQ_CAL, align 4
  %191 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %192 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %202

195:                                              ; preds = %183
  %196 = load i32, i32* @TX_IQ_CAL, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %199 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %195, %189
  %203 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %204 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %205 = call i32 @REG_READ(%struct.ath_hw* %203, i32 %204)
  %206 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load i32, i32* @TX_CL_CAL, align 4
  %211 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %212 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %222

215:                                              ; preds = %202
  %216 = load i32, i32* @TX_CL_CAL, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %219 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %215, %209
  br label %223

223:                                              ; preds = %222, %179
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %103, %17
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @ar9003_hw_prog_ini(%struct.ath_hw*, i32*, i32) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @ar9550_hw_get_modes_txgain_index(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_override_ini(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_channel_regs(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_set_chain_masks(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
