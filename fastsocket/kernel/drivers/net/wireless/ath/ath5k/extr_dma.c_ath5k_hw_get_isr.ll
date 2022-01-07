; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_get_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_get_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i32, i32, i32, i32, i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_ISR = common dso_local global i32 0, align 4
@AR5K_INT_NOCARD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AR5K_INT_COMMON = common dso_local global i32 0, align 4
@AR5K_ISR_SSERR = common dso_local global i32 0, align 4
@AR5K_ISR_MCABT = common dso_local global i32 0, align 4
@AR5K_ISR_DPERR = common dso_local global i32 0, align 4
@AR5K_INT_FATAL = common dso_local global i32 0, align 4
@AR5K_PISR = common dso_local global i32 0, align 4
@AR5K_SISR0 = common dso_local global i32 0, align 4
@AR5K_SISR1 = common dso_local global i32 0, align 4
@AR5K_SISR2 = common dso_local global i32 0, align 4
@AR5K_SISR3 = common dso_local global i32 0, align 4
@AR5K_SISR4 = common dso_local global i32 0, align 4
@AR5K_ISR_BITS_FROM_SISRS = common dso_local global i32 0, align 4
@AR5K_ISR_TXOK = common dso_local global i32 0, align 4
@AR5K_SISR0_QCU_TXOK = common dso_local global i32 0, align 4
@AR5K_ISR_TXDESC = common dso_local global i32 0, align 4
@AR5K_SISR0_QCU_TXDESC = common dso_local global i32 0, align 4
@AR5K_ISR_TXERR = common dso_local global i32 0, align 4
@AR5K_SISR1_QCU_TXERR = common dso_local global i32 0, align 4
@AR5K_ISR_TXEOL = common dso_local global i32 0, align 4
@AR5K_SISR1_QCU_TXEOL = common dso_local global i32 0, align 4
@AR5K_ISR_TXURN = common dso_local global i32 0, align 4
@AR5K_SISR2_QCU_TXURN = common dso_local global i32 0, align 4
@AR5K_ISR_TIM = common dso_local global i32 0, align 4
@AR5K_INT_TIM = common dso_local global i32 0, align 4
@AR5K_ISR_BCNMISC = common dso_local global i32 0, align 4
@AR5K_SISR2_TIM = common dso_local global i32 0, align 4
@AR5K_SISR2_DTIM = common dso_local global i32 0, align 4
@AR5K_INT_DTIM = common dso_local global i32 0, align 4
@AR5K_SISR2_DTIM_SYNC = common dso_local global i32 0, align 4
@AR5K_INT_DTIM_SYNC = common dso_local global i32 0, align 4
@AR5K_SISR2_BCN_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_INT_BCN_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_SISR2_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_INT_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_ISR_HIUERR = common dso_local global i32 0, align 4
@AR5K_ISR_BNR = common dso_local global i32 0, align 4
@AR5K_INT_BNR = common dso_local global i32 0, align 4
@AR5K_ISR_QCBRORN = common dso_local global i32 0, align 4
@AR5K_INT_QCBRORN = common dso_local global i32 0, align 4
@AR5K_SISR3_QCBRORN = common dso_local global i32 0, align 4
@AR5K_ISR_QCBRURN = common dso_local global i32 0, align 4
@AR5K_INT_QCBRURN = common dso_local global i32 0, align 4
@AR5K_SISR3_QCBRURN = common dso_local global i32 0, align 4
@AR5K_ISR_QTRIG = common dso_local global i32 0, align 4
@AR5K_INT_QTRIG = common dso_local global i32 0, align 4
@AR5K_SISR4_QTRIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ISR: 0x%08x IMR: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_isr(%struct.ath5k_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AR5K_AR5210, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %22 = load i32, i32* @AR5K_ISR, align 4
  %23 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AR5K_INT_NOCARD, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %357

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AR5K_INT_COMMON, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AR5K_ISR_SSERR, align 4
  %46 = load i32, i32* @AR5K_ISR_MCABT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AR5K_ISR_DPERR, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load i32, i32* @AR5K_INT_FATAL, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %35
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %6, align 4
  br label %338

60:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = load i32, i32* @AR5K_PISR, align 4
  %63 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @AR5K_INT_NOCARD, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %357

75:                                               ; preds = %60
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %77 = load i32, i32* @AR5K_SISR0, align 4
  %78 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %80 = load i32, i32* @AR5K_SISR1, align 4
  %81 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %83 = load i32, i32* @AR5K_SISR2, align 4
  %84 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %86 = load i32, i32* @AR5K_SISR3, align 4
  %87 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %89 = load i32, i32* @AR5K_SISR4, align 4
  %90 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @AR5K_ISR_BITS_FROM_SISRS, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  store i32 %94, i32* %9, align 4
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @AR5K_SISR0, align 4
  %98 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %95, i32 %96, i32 %97)
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @AR5K_SISR1, align 4
  %102 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @AR5K_SISR2, align 4
  %106 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @AR5K_SISR3, align 4
  %110 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %107, i32 %108, i32 %109)
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @AR5K_SISR4, align 4
  %114 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %111, i32 %112, i32 %113)
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @AR5K_PISR, align 4
  %118 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %115, i32 %116, i32 %117)
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %120 = load i32, i32* @AR5K_PISR, align 4
  %121 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @AR5K_INT_COMMON, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %126 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %124, %127
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @AR5K_ISR_TXOK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %75
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @AR5K_SISR0_QCU_TXOK, align 4
  %137 = call i32 @AR5K_REG_MS(i32 %135, i32 %136)
  %138 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %139 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %134, %75
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @AR5K_ISR_TXDESC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @AR5K_SISR0_QCU_TXDESC, align 4
  %150 = call i32 @AR5K_REG_MS(i32 %148, i32 %149)
  %151 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %152 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %147, %142
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @AR5K_ISR_TXERR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @AR5K_SISR1_QCU_TXERR, align 4
  %163 = call i32 @AR5K_REG_MS(i32 %161, i32 %162)
  %164 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %165 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %160, %155
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @AR5K_ISR_TXEOL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @AR5K_SISR1_QCU_TXEOL, align 4
  %176 = call i32 @AR5K_REG_MS(i32 %174, i32 %175)
  %177 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %178 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %173, %168
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @AR5K_ISR_TXURN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @AR5K_SISR2_QCU_TXURN, align 4
  %189 = call i32 @AR5K_REG_MS(i32 %187, i32 %188)
  %190 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %191 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %181
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @AR5K_ISR_TIM, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load i32, i32* @AR5K_INT_TIM, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %200
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %199, %194
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @AR5K_ISR_BCNMISC, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %260

209:                                              ; preds = %204
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @AR5K_SISR2_TIM, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load i32, i32* @AR5K_INT_TIM, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %215
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %214, %209
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @AR5K_SISR2_DTIM, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load i32, i32* @AR5K_INT_DTIM, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %225
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %224, %219
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @AR5K_SISR2_DTIM_SYNC, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load i32, i32* @AR5K_INT_DTIM_SYNC, align 4
  %236 = load i32*, i32** %5, align 8
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %235
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %234, %229
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @AR5K_SISR2_BCN_TIMEOUT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load i32, i32* @AR5K_INT_BCN_TIMEOUT, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %245
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %244, %239
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* @AR5K_SISR2_CAB_TIMEOUT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load i32, i32* @AR5K_INT_CAB_TIMEOUT, align 4
  %256 = load i32*, i32** %5, align 8
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %255
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %254, %249
  br label %260

260:                                              ; preds = %259, %204
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* @AR5K_ISR_HIUERR, align 4
  %263 = and i32 %261, %262
  %264 = call i64 @unlikely(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load i32, i32* @AR5K_INT_FATAL, align 4
  %268 = load i32*, i32** %5, align 8
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %267
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %266, %260
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @AR5K_ISR_BNR, align 4
  %274 = and i32 %272, %273
  %275 = call i64 @unlikely(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %271
  %278 = load i32, i32* @AR5K_INT_BNR, align 4
  %279 = load i32*, i32** %5, align 8
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %278
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %277, %271
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @AR5K_ISR_QCBRORN, align 4
  %285 = and i32 %283, %284
  %286 = call i64 @unlikely(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %282
  %289 = load i32, i32* @AR5K_INT_QCBRORN, align 4
  %290 = load i32*, i32** %5, align 8
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %289
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* @AR5K_SISR3_QCBRORN, align 4
  %295 = call i32 @AR5K_REG_MS(i32 %293, i32 %294)
  %296 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %297 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %288, %282
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* @AR5K_ISR_QCBRURN, align 4
  %303 = and i32 %301, %302
  %304 = call i64 @unlikely(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %300
  %307 = load i32, i32* @AR5K_INT_QCBRURN, align 4
  %308 = load i32*, i32** %5, align 8
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %307
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* @AR5K_SISR3_QCBRURN, align 4
  %313 = call i32 @AR5K_REG_MS(i32 %311, i32 %312)
  %314 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %315 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  br label %318

318:                                              ; preds = %306, %300
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @AR5K_ISR_QTRIG, align 4
  %321 = and i32 %319, %320
  %322 = call i64 @unlikely(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %318
  %325 = load i32, i32* @AR5K_INT_QTRIG, align 4
  %326 = load i32*, i32** %5, align 8
  %327 = load i32, i32* %326, align 4
  %328 = or i32 %327, %325
  store i32 %328, i32* %326, align 4
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* @AR5K_SISR4_QTRIG, align 4
  %331 = call i32 @AR5K_REG_MS(i32 %329, i32 %330)
  %332 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %333 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %334, %331
  store i32 %335, i32* %333, align 4
  br label %336

336:                                              ; preds = %324, %318
  %337 = load i32, i32* %8, align 4
  store i32 %337, i32* %6, align 4
  br label %338

338:                                              ; preds = %336, %58
  %339 = load i32*, i32** %5, align 8
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %338
  %343 = call i64 (...) @net_ratelimit()
  %344 = icmp ne i64 %343, 0
  br label %345

345:                                              ; preds = %342, %338
  %346 = phi i1 [ false, %338 ], [ %344, %342 ]
  %347 = zext i1 %346 to i32
  %348 = call i64 @unlikely(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load i32, i32* %6, align 4
  %352 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %353 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @ATH5K_PRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %351, i32 %354)
  br label %356

356:                                              ; preds = %350, %345
  store i32 0, i32* %3, align 4
  br label %357

357:                                              ; preds = %356, %70, %30
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_MS(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @ATH5K_PRINTF(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
