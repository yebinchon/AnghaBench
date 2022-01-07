; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__, i64, i64, i64, i64, %struct.ath9k_hw_capabilities }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"New interrupt mask 0x%x\0A\00", align 1
@ATH9K_INT_COMMON = common dso_local global i32 0, align 4
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@AR_IMR_TXMINTR = common dso_local global i32 0, align 4
@AR_IMR_TXINTM = common dso_local global i32 0, align 4
@AR_IMR_TXOK = common dso_local global i32 0, align 4
@AR_IMR_TXDESC = common dso_local global i32 0, align 4
@AR_IMR_TXERR = common dso_local global i32 0, align 4
@AR_IMR_TXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RX = common dso_local global i32 0, align 4
@AR_IMR_RXERR = common dso_local global i32 0, align 4
@AR_IMR_RXOK_HP = common dso_local global i32 0, align 4
@AR_IMR_RXOK_LP = common dso_local global i32 0, align 4
@AR_IMR_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_RXINTM = common dso_local global i32 0, align 4
@AR_IMR_RXOK = common dso_local global i32 0, align 4
@AR_IMR_RXDESC = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@AR_IMR_GENTMR = common dso_local global i32 0, align 4
@ATH9K_INT_GENTIMER = common dso_local global i32 0, align 4
@ATH9K_INT_BMISC = common dso_local global i32 0, align 4
@AR_IMR_BCNMISC = common dso_local global i32 0, align 4
@ATH9K_INT_TIM = common dso_local global i32 0, align 4
@AR_IMR_S2_TIM = common dso_local global i32 0, align 4
@ATH9K_INT_DTIM = common dso_local global i32 0, align 4
@AR_IMR_S2_DTIM = common dso_local global i32 0, align 4
@ATH9K_INT_DTIMSYNC = common dso_local global i32 0, align 4
@AR_IMR_S2_DTIMSYNC = common dso_local global i32 0, align 4
@ATH9K_INT_CABEND = common dso_local global i32 0, align 4
@AR_IMR_S2_CABEND = common dso_local global i32 0, align 4
@ATH9K_INT_TSFOOR = common dso_local global i32 0, align 4
@AR_IMR_S2_TSFOOR = common dso_local global i32 0, align 4
@ATH9K_INT_GTT = common dso_local global i32 0, align 4
@ATH9K_INT_CST = common dso_local global i32 0, align 4
@AR_IMR_S2_GTT = common dso_local global i32 0, align 4
@AR_IMR_S2_CST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new IMR 0x%x\0A\00", align 1
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_S2_CABTO = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@ATH9K_INT_TIM_TIMER = common dso_local global i32 0, align 4
@AR_IMR_S5 = common dso_local global i32 0, align 4
@AR_IMR_S5_TIM_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_interrupts(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_hw_capabilities*, align 8
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 7
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %24 = load i32, i32* @INTERRUPT, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ath_dbg(%struct.ath_common* %23, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ATH9K_INT_COMMON, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ATH9K_INT_TX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %22
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @AR_IMR_TXMINTR, align 4
  %42 = load i32, i32* @AR_IMR_TXINTM, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %65

46:                                               ; preds = %34
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @AR_IMR_TXOK, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @AR_IMR_TXDESC, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @AR_IMR_TXERR, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @AR_IMR_TXEOL, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %22
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @ATH9K_INT_RX, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %150

89:                                               ; preds = %84
  %90 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %91 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = load i32, i32* @AR_IMR_RXERR, align 4
  %95 = load i32, i32* @AR_IMR_RXOK_HP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %100 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %93
  %105 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %110 = load i32, i32* @AR_IMR_RXINTM, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %118

114:                                              ; preds = %93
  %115 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %104
  br label %138

119:                                              ; preds = %89
  %120 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %121 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %127 = load i32, i32* @AR_IMR_RXINTM, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  br label %137

131:                                              ; preds = %119
  %132 = load i32, i32* @AR_IMR_RXOK, align 4
  %133 = load i32, i32* @AR_IMR_RXDESC, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %118
  %139 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %6, align 8
  %140 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* @AR_IMR_GENTMR, align 4
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %138
  br label %150

150:                                              ; preds = %149, %84
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @AR_IMR_GENTMR, align 4
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @ATH9K_INT_BMISC, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %213

164:                                              ; preds = %159
  %165 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %166 = load i32, i32* %4, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @ATH9K_INT_TIM, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = load i32, i32* @AR_IMR_S2_TIM, align 4
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %172, %164
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @ATH9K_INT_DTIM, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @AR_IMR_S2_DTIM, align 4
  %183 = load i32, i32* %5, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* @ATH9K_INT_DTIMSYNC, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @AR_IMR_S2_DTIMSYNC, align 4
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @ATH9K_INT_CABEND, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @AR_IMR_S2_CABEND, align 4
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* @AR_IMR_S2_TSFOOR, align 4
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %208, %203
  br label %213

213:                                              ; preds = %212, %159
  %214 = load i32, i32* %3, align 4
  %215 = load i32, i32* @ATH9K_INT_GTT, align 4
  %216 = load i32, i32* @ATH9K_INT_CST, align 4
  %217 = or i32 %215, %216
  %218 = and i32 %214, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %242

220:                                              ; preds = %213
  %221 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %222 = load i32, i32* %4, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* @ATH9K_INT_GTT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %220
  %229 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %230 = load i32, i32* %5, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %228, %220
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* @ATH9K_INT_CST, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i32, i32* @AR_IMR_S2_CST, align 4
  %239 = load i32, i32* %5, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %237, %232
  br label %242

242:                                              ; preds = %241, %213
  %243 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %244 = load i32, i32* @INTERRUPT, align 4
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @ath_dbg(%struct.ath_common* %243, i32 %244, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %245)
  %247 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %248 = load i32, i32* @AR_IMR, align 4
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @REG_WRITE(%struct.ath_hw* %247, i32 %248, i32 %249)
  %251 = load i32, i32* @AR_IMR_S2_TIM, align 4
  %252 = load i32, i32* @AR_IMR_S2_DTIM, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @AR_IMR_S2_DTIMSYNC, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @AR_IMR_S2_CABEND, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @AR_IMR_S2_CABTO, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @AR_IMR_S2_TSFOOR, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @AR_IMR_S2_CST, align 4
  %265 = or i32 %263, %264
  %266 = xor i32 %265, -1
  %267 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %268 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %273 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %277 = load i32, i32* @AR_IMR_S2, align 4
  %278 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %279 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @REG_WRITE(%struct.ath_hw* %276, i32 %277, i32 %280)
  %282 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %6, align 8
  %283 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %242
  %289 = load i32, i32* %3, align 4
  %290 = load i32, i32* @ATH9K_INT_TIM_TIMER, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %295 = load i32, i32* @AR_IMR_S5, align 4
  %296 = load i32, i32* @AR_IMR_S5_TIM_TIMER, align 4
  %297 = call i32 @REG_SET_BIT(%struct.ath_hw* %294, i32 %295, i32 %296)
  br label %303

298:                                              ; preds = %288
  %299 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %300 = load i32, i32* @AR_IMR_S5, align 4
  %301 = load i32, i32* @AR_IMR_S5_TIM_TIMER, align 4
  %302 = call i32 @REG_CLR_BIT(%struct.ath_hw* %299, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %293
  br label %304

304:                                              ; preds = %303, %242
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
