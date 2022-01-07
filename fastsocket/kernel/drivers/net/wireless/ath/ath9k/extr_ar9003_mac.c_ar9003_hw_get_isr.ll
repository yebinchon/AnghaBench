; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_get_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_get_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i8*, i8*, %struct.TYPE_2__, %struct.ath9k_hw_capabilities }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath_common = type { i32 }

@AR_INTR_MAC_IRQ = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_MASK_MCI = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_CAUSE = common dso_local global i32 0, align 4
@AR_RTC_STATUS = common dso_local global i32 0, align 4
@AR_RTC_STATUS_M = common dso_local global i32 0, align 4
@AR_RTC_STATUS_ON = common dso_local global i32 0, align 4
@AR_ISR = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_ISR_BCNMISC = common dso_local global i32 0, align 4
@AR_ISR_S2 = common dso_local global i32 0, align 4
@AR_ISR_S2_TIM = common dso_local global i32 0, align 4
@MAP_ISR_S2_TIM = common dso_local global i32 0, align 4
@AR_ISR_S2_DTIM = common dso_local global i32 0, align 4
@MAP_ISR_S2_DTIM = common dso_local global i32 0, align 4
@AR_ISR_S2_DTIMSYNC = common dso_local global i32 0, align 4
@MAP_ISR_S2_DTIMSYNC = common dso_local global i32 0, align 4
@AR_ISR_S2_CABEND = common dso_local global i32 0, align 4
@MAP_ISR_S2_CABEND = common dso_local global i32 0, align 4
@AR_ISR_S2_GTT = common dso_local global i32 0, align 4
@MAP_ISR_S2_GTT = common dso_local global i32 0, align 4
@AR_ISR_S2_CST = common dso_local global i32 0, align 4
@MAP_ISR_S2_CST = common dso_local global i32 0, align 4
@AR_ISR_S2_TSFOOR = common dso_local global i32 0, align 4
@MAP_ISR_S2_TSFOOR = common dso_local global i32 0, align 4
@AR_ISR_S2_BB_WATCHDOG = common dso_local global i32 0, align 4
@MAP_ISR_S2_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RAC_SUPPORTED = common dso_local global i32 0, align 4
@AR_ISR_RAC = common dso_local global i32 0, align 4
@ATH9K_INT_COMMON = common dso_local global i32 0, align 4
@AR_ISR_RXMINTR = common dso_local global i32 0, align 4
@AR_ISR_RXINTM = common dso_local global i32 0, align 4
@ATH9K_INT_RXLP = common dso_local global i32 0, align 4
@AR_ISR_TXMINTR = common dso_local global i32 0, align 4
@AR_ISR_TXINTM = common dso_local global i32 0, align 4
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@AR_ISR_LP_RXOK = common dso_local global i32 0, align 4
@AR_ISR_RXERR = common dso_local global i32 0, align 4
@AR_ISR_HP_RXOK = common dso_local global i32 0, align 4
@ATH9K_INT_RXHP = common dso_local global i32 0, align 4
@AR_ISR_TXOK = common dso_local global i32 0, align 4
@AR_ISR_TXERR = common dso_local global i32 0, align 4
@AR_ISR_TXEOL = common dso_local global i32 0, align 4
@AR_ISR_S0 = common dso_local global i32 0, align 4
@AR_ISR_S1 = common dso_local global i32 0, align 4
@AR_ISR_GENTMR = common dso_local global i32 0, align 4
@AR_ISR_S5_S = common dso_local global i32 0, align 4
@AR_ISR_S5 = common dso_local global i32 0, align 4
@AR_ISR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4
@AR_ISR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@ATH9K_INT_GENTIMER = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_FATAL = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_PERR = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"received PCI FATAL interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"received PCI PERR interrupt\0A\00", align 1
@ATH9K_INT_FATAL = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_TIMEOUT = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@AR_RC_HOSTIF = common dso_local global i32 0, align 4
@AR_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"AR_INTR_SYNC_LOCAL_TIMEOUT\0A\00", align 1
@AR_INTR_SYNC_CAUSE_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32*)* @ar9003_hw_get_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_get_isr(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath9k_hw_capabilities*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 3
  store %struct.ath9k_hw_capabilities* %19, %struct.ath9k_hw_capabilities** %8, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @AR_INTR_MAC_IRQ, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @AR_INTR_ASYNC_MASK_MCI, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %32 = load i32, i32* @AR_INTR_ASYNC_CAUSE, align 4
  %33 = call i32 @REG_READ(%struct.ath_hw* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = load i32, i32* @AR_RTC_STATUS, align 4
  %41 = call i32 @REG_READ(%struct.ath_hw* %39, i32 %40)
  %42 = load i32, i32* @AR_RTC_STATUS_M, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @AR_RTC_STATUS_ON, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = load i32, i32* @AR_ISR, align 4
  %49 = call i32 @REG_READ(%struct.ath_hw* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %38
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %53 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %54 = call i32 @REG_READ(%struct.ath_hw* %52, i32 %53)
  %55 = load i32, i32* @AR_INTR_SYNC_DEFAULT, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %445

67:                                               ; preds = %63, %60, %51
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %361

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @AR_ISR_BCNMISC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %151

75:                                               ; preds = %70
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = load i32, i32* @AR_ISR_S2, align 4
  %78 = call i32 @REG_READ(%struct.ath_hw* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @AR_ISR_S2_TIM, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @MAP_ISR_S2_TIM, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @AR_ISR_S2_DTIM, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @MAP_ISR_S2_DTIM, align 4
  %90 = ashr i32 %88, %89
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @AR_ISR_S2_DTIMSYNC, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @MAP_ISR_S2_DTIMSYNC, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @AR_ISR_S2_CABEND, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @MAP_ISR_S2_CABEND, align 4
  %104 = ashr i32 %102, %103
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @AR_ISR_S2_GTT, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @MAP_ISR_S2_GTT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @AR_ISR_S2_CST, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @MAP_ISR_S2_CST, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @AR_ISR_S2_TSFOOR, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @MAP_ISR_S2_TSFOOR, align 4
  %125 = ashr i32 %123, %124
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @AR_ISR_S2_BB_WATCHDOG, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @MAP_ISR_S2_BB_WATCHDOG, align 4
  %132 = ashr i32 %130, %131
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %8, align 8
  %136 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %75
  %142 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %143 = load i32, i32* @AR_ISR_S2, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @REG_WRITE(%struct.ath_hw* %142, i32 %143, i32 %144)
  %146 = load i32, i32* @AR_ISR_BCNMISC, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %141, %75
  br label %151

151:                                              ; preds = %150, %70
  %152 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %8, align 8
  %153 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %160 = load i32, i32* @AR_ISR_RAC, align 4
  %161 = call i32 @REG_READ(%struct.ath_hw* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %151
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32*, i32** %5, align 8
  store i32 0, i32* %166, align 4
  store i32 0, i32* %3, align 4
  br label %445

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @ATH9K_INT_COMMON, align 4
  %170 = and i32 %168, %169
  %171 = load i32*, i32** %5, align 8
  store i32 %170, i32* %171, align 4
  %172 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %173 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %167
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @AR_ISR_RXMINTR, align 4
  %180 = load i32, i32* @AR_ISR_RXINTM, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %177
  br label %190

190:                                              ; preds = %189, %167
  %191 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %192 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %190
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @AR_ISR_TXMINTR, align 4
  %199 = load i32, i32* @AR_ISR_TXINTM, align 4
  %200 = or i32 %198, %199
  %201 = and i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load i32, i32* @ATH9K_INT_TX, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %203, %196
  br label %209

209:                                              ; preds = %208, %190
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @AR_ISR_LP_RXOK, align 4
  %212 = load i32, i32* @AR_ISR_RXERR, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %210, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %217
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %216, %209
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @AR_ISR_HP_RXOK, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %227
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %226, %221
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @AR_ISR_TXOK, align 4
  %234 = load i32, i32* @AR_ISR_TXERR, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @AR_ISR_TXEOL, align 4
  %237 = or i32 %235, %236
  %238 = and i32 %232, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %275

240:                                              ; preds = %231
  %241 = load i32, i32* @ATH9K_INT_TX, align 4
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %241
  store i32 %244, i32* %242, align 4
  %245 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %8, align 8
  %246 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %274, label %251

251:                                              ; preds = %240
  %252 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %253 = load i32, i32* @AR_ISR_S0, align 4
  %254 = call i32 @REG_READ(%struct.ath_hw* %252, i32 %253)
  store i32 %254, i32* %15, align 4
  %255 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %256 = load i32, i32* @AR_ISR_S0, align 4
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @REG_WRITE(%struct.ath_hw* %255, i32 %256, i32 %257)
  %259 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %260 = load i32, i32* @AR_ISR_S1, align 4
  %261 = call i32 @REG_READ(%struct.ath_hw* %259, i32 %260)
  store i32 %261, i32* %16, align 4
  %262 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %263 = load i32, i32* @AR_ISR_S1, align 4
  %264 = load i32, i32* %16, align 4
  %265 = call i32 @REG_WRITE(%struct.ath_hw* %262, i32 %263, i32 %264)
  %266 = load i32, i32* @AR_ISR_TXOK, align 4
  %267 = load i32, i32* @AR_ISR_TXERR, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @AR_ISR_TXEOL, align 4
  %270 = or i32 %268, %269
  %271 = xor i32 %270, -1
  %272 = load i32, i32* %6, align 4
  %273 = and i32 %272, %271
  store i32 %273, i32* %6, align 4
  br label %274

274:                                              ; preds = %251, %240
  br label %275

275:                                              ; preds = %274, %231
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* @AR_ISR_GENTMR, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %332

280:                                              ; preds = %275
  %281 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %8, align 8
  %282 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %280
  %288 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %289 = load i32, i32* @AR_ISR_S5_S, align 4
  %290 = call i32 @REG_READ(%struct.ath_hw* %288, i32 %289)
  store i32 %290, i32* %17, align 4
  br label %295

291:                                              ; preds = %280
  %292 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %293 = load i32, i32* @AR_ISR_S5, align 4
  %294 = call i32 @REG_READ(%struct.ath_hw* %292, i32 %293)
  store i32 %294, i32* %17, align 4
  br label %295

295:                                              ; preds = %291, %287
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* @AR_ISR_S5_GENTIMER_TRIG, align 4
  %298 = call i8* @MS(i32 %296, i32 %297)
  %299 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %300 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* @AR_ISR_S5_GENTIMER_THRESH, align 4
  %303 = call i8* @MS(i32 %301, i32 %302)
  %304 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %305 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  %306 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %307 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %315

310:                                              ; preds = %295
  %311 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %312 = load i32*, i32** %5, align 8
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %311
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %310, %295
  %316 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %8, align 8
  %317 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %315
  %323 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %324 = load i32, i32* @AR_ISR_S5, align 4
  %325 = load i32, i32* %17, align 4
  %326 = call i32 @REG_WRITE(%struct.ath_hw* %323, i32 %324, i32 %325)
  %327 = load i32, i32* @AR_ISR_GENTMR, align 4
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %6, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %322, %315
  br label %332

332:                                              ; preds = %331, %275
  %333 = load i32, i32* %7, align 4
  %334 = load i32*, i32** %5, align 8
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %333
  store i32 %336, i32* %334, align 4
  %337 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %8, align 8
  %338 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %351, label %343

343:                                              ; preds = %332
  %344 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %345 = load i32, i32* @AR_ISR, align 4
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @REG_WRITE(%struct.ath_hw* %344, i32 %345, i32 %346)
  %348 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %349 = load i32, i32* @AR_ISR, align 4
  %350 = call i32 @REG_READ(%struct.ath_hw* %348, i32 %349)
  br label %351

351:                                              ; preds = %343, %332
  %352 = load i32*, i32** %5, align 8
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %351
  %358 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %359 = call i32 @ar9003_hw_bb_watchdog_read(%struct.ath_hw* %358)
  br label %360

360:                                              ; preds = %357, %351
  br label %361

361:                                              ; preds = %360, %67
  %362 = load i32, i32* %11, align 4
  %363 = load i32, i32* @AR_INTR_ASYNC_MASK_MCI, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %361
  %367 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %368 = load i32*, i32** %5, align 8
  %369 = call i32 @ar9003_mci_get_isr(%struct.ath_hw* %367, i32* %368)
  br label %370

370:                                              ; preds = %366, %361
  %371 = load i32, i32* %10, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %444

373:                                              ; preds = %370
  %374 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %375 = load i32, i32* %10, align 4
  %376 = call i32 @ath9k_debug_sync_cause(%struct.ath_common* %374, i32 %375)
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %379 = load i32, i32* @AR_INTR_SYNC_HOST1_PERR, align 4
  %380 = or i32 %378, %379
  %381 = and i32 %377, %380
  %382 = icmp ne i32 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i32 1, i32 0
  store i32 %384, i32* %13, align 4
  %385 = load i32, i32* %13, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %410

387:                                              ; preds = %373
  %388 = load i32, i32* %10, align 4
  %389 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %387
  %393 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %394 = load i32, i32* @ANY, align 4
  %395 = call i32 @ath_dbg(%struct.ath_common* %393, i32 %394, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %396

396:                                              ; preds = %392, %387
  %397 = load i32, i32* %10, align 4
  %398 = load i32, i32* @AR_INTR_SYNC_HOST1_PERR, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %403 = load i32, i32* @ANY, align 4
  %404 = call i32 @ath_dbg(%struct.ath_common* %402, i32 %403, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %405

405:                                              ; preds = %401, %396
  %406 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %407 = load i32*, i32** %5, align 8
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %406
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %405, %373
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_TIMEOUT, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %427

415:                                              ; preds = %410
  %416 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %417 = load i32, i32* @AR_RC, align 4
  %418 = load i32, i32* @AR_RC_HOSTIF, align 4
  %419 = call i32 @REG_WRITE(%struct.ath_hw* %416, i32 %417, i32 %418)
  %420 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %421 = load i32, i32* @AR_RC, align 4
  %422 = call i32 @REG_WRITE(%struct.ath_hw* %420, i32 %421, i32 0)
  %423 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %424 = load i32*, i32** %5, align 8
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %423
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %415, %410
  %428 = load i32, i32* %10, align 4
  %429 = load i32, i32* @AR_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %427
  %433 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %434 = load i32, i32* @INTERRUPT, align 4
  %435 = call i32 @ath_dbg(%struct.ath_common* %433, i32 %434, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %436

436:                                              ; preds = %432, %427
  %437 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %438 = load i32, i32* @AR_INTR_SYNC_CAUSE_CLR, align 4
  %439 = load i32, i32* %10, align 4
  %440 = call i32 @REG_WRITE(%struct.ath_hw* %437, i32 %438, i32 %439)
  %441 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %442 = load i32, i32* @AR_INTR_SYNC_CAUSE_CLR, align 4
  %443 = call i32 @REG_READ(%struct.ath_hw* %441, i32 %442)
  br label %444

444:                                              ; preds = %436, %370
  store i32 1, i32* %3, align 4
  br label %445

445:                                              ; preds = %444, %165, %66
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @ar9003_hw_bb_watchdog_read(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_get_isr(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath9k_debug_sync_cause(%struct.ath_common*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
