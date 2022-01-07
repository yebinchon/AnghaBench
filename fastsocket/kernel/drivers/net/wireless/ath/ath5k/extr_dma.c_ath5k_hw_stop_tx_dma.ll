; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_stop_tx_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_stop_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AR5K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_CR = common dso_local global i32 0, align 4
@AR5K_CR_TXD0 = common dso_local global i32 0, align 4
@AR5K_CR_TXE0 = common dso_local global i32 0, align 4
@AR5K_CR_TXD1 = common dso_local global i32 0, align 4
@AR5K_BSR = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_DCU_EARLY = common dso_local global i32 0, align 4
@AR5K_QCU_TXD = common dso_local global i32 0, align 4
@AR5K_QCU_TXE = common dso_local global i32 0, align 4
@ATH5K_DEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"queue %i didn't stop !\0A\00", align 1
@AR5K_QCU_STS_FRMPENDCNT = common dso_local global i32 0, align 4
@AR5K_SREV_AR2414 = common dso_local global i32 0, align 4
@AR5K_QUIET_CTL2_QT_PER = common dso_local global i32 0, align 4
@AR5K_QUIET_CTL2_QT_DUR = common dso_local global i32 0, align 4
@AR5K_QUIET_CTL2 = common dso_local global i32 0, align 4
@AR5K_QUIET_CTL1_QT_EN = common dso_local global i32 0, align 4
@AR5K_TSF_L32_5211 = common dso_local global i32 0, align 4
@AR5K_QUIET_CTL1_NEXT_QT_TSF = common dso_local global i32 0, align 4
@AR5K_QUIET_CTL1 = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_5211 = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_CHANNEL_IDLE_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"quiet mechanism didn't work q:%i !\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"tx dma didn't stop (q:%i, frm:%i) !\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_hw_stop_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_stop_tx_dma(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 40, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AR5K_ASSERT_ENTRY(i32 %9, i32 %14)
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AR5K_TX_QUEUE_INACTIVE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %220

29:                                               ; preds = %2
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AR5K_AR5210, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %29
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %37 = load i32, i32* @AR5K_CR, align 4
  %38 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %64 [
    i32 128, label %47
    i32 130, label %54
    i32 129, label %54
  ]

47:                                               ; preds = %35
  %48 = load i32, i32* @AR5K_CR_TXD0, align 4
  %49 = load i32, i32* @AR5K_CR_TXE0, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %67

54:                                               ; preds = %35, %35
  %55 = load i32, i32* @AR5K_CR_TXD1, align 4
  %56 = load i32, i32* @AR5K_CR_TXD1, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = load i32, i32* @AR5K_BSR, align 4
  %63 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %61, i32 0, i32 %62)
  br label %67

64:                                               ; preds = %35
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %220

67:                                               ; preds = %54, %47
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AR5K_CR, align 4
  %71 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %73 = load i32, i32* @AR5K_CR, align 4
  %74 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %72, i32 %73)
  br label %219

75:                                               ; preds = %29
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @AR5K_QUEUE_MISC(i32 %77)
  %79 = load i32, i32* @AR5K_QCU_MISC_DCU_EARLY, align 4
  %80 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %76, i32 %78, i32 %79)
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %82 = load i32, i32* @AR5K_QCU_TXD, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw* %81, i32 %82, i32 %83)
  store i32 1000, i32* %6, align 4
  br label %85

85:                                               ; preds = %98, %75
  %86 = load i32, i32* %6, align 4
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %90 = load i32, i32* @AR5K_QCU_TXE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @AR5K_REG_READ_Q(%struct.ath5k_hw* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %88, %85
  %95 = phi i1 [ false, %85 ], [ %93, %88 ]
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = call i32 @udelay(i32 100)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, -1
  store i32 %100, i32* %6, align 4
  br label %85

101:                                              ; preds = %94
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %103 = load i32, i32* @AR5K_QCU_TXE, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @AR5K_REG_READ_Q(%struct.ath5k_hw* %102, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %109 = load i32, i32* @ATH5K_DEBUG_DMA, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, ...) @ATH5K_DBG(%struct.ath5k_hw* %108, i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  store i32 1000, i32* %6, align 4
  br label %113

113:                                              ; preds = %128, %112
  %114 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @AR5K_QUEUE_STATUS(i32 %115)
  %117 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %114, i32 %116)
  %118 = load i32, i32* @AR5K_QCU_STS_FRMPENDCNT, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %8, align 4
  %120 = call i32 @udelay(i32 100)
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %122, -1
  store i32 %123, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i1 [ false, %121 ], [ %127, %125 ]
  br i1 %129, label %113, label %130

130:                                              ; preds = %128
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %132 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AR5K_SREV_AR2414, align 4
  %135 = ashr i32 %134, 4
  %136 = icmp sge i32 %133, %135
  br i1 %136, label %137, label %199

137:                                              ; preds = %130
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %199

140:                                              ; preds = %137
  %141 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %142 = load i32, i32* @AR5K_QUIET_CTL2_QT_PER, align 4
  %143 = call i32 @AR5K_REG_SM(i32 100, i32 %142)
  %144 = load i32, i32* @AR5K_QUIET_CTL2_QT_DUR, align 4
  %145 = call i32 @AR5K_REG_SM(i32 10, i32 %144)
  %146 = or i32 %143, %145
  %147 = load i32, i32* @AR5K_QUIET_CTL2, align 4
  %148 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %141, i32 %146, i32 %147)
  %149 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %150 = load i32, i32* @AR5K_QUIET_CTL1_QT_EN, align 4
  %151 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %152 = load i32, i32* @AR5K_TSF_L32_5211, align 4
  %153 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %151, i32 %152)
  %154 = ashr i32 %153, 10
  %155 = load i32, i32* @AR5K_QUIET_CTL1_NEXT_QT_TSF, align 4
  %156 = call i32 @AR5K_REG_SM(i32 %154, i32 %155)
  %157 = or i32 %150, %156
  %158 = load i32, i32* @AR5K_QUIET_CTL1, align 4
  %159 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %149, i32 %157, i32 %158)
  %160 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %161 = load i32, i32* @AR5K_DIAG_SW_5211, align 4
  %162 = load i32, i32* @AR5K_DIAG_SW_CHANNEL_IDLE_HIGH, align 4
  %163 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %160, i32 %161, i32 %162)
  %164 = call i32 @udelay(i32 400)
  %165 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %166 = load i32, i32* @AR5K_QUIET_CTL1, align 4
  %167 = load i32, i32* @AR5K_QUIET_CTL1_QT_EN, align 4
  %168 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %165, i32 %166, i32 %167)
  store i32 100, i32* %6, align 4
  br label %169

169:                                              ; preds = %184, %140
  %170 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @AR5K_QUEUE_STATUS(i32 %171)
  %173 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %170, i32 %172)
  %174 = load i32, i32* @AR5K_QCU_STS_FRMPENDCNT, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %8, align 4
  %176 = call i32 @udelay(i32 100)
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %6, align 4
  %179 = add i32 %178, -1
  store i32 %179, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br label %184

184:                                              ; preds = %181, %177
  %185 = phi i1 [ false, %177 ], [ %183, %181 ]
  br i1 %185, label %169, label %186

186:                                              ; preds = %184
  %187 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %188 = load i32, i32* @AR5K_DIAG_SW_5211, align 4
  %189 = load i32, i32* @AR5K_DIAG_SW_CHANNEL_IDLE_HIGH, align 4
  %190 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %187, i32 %188, i32 %189)
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %195 = load i32, i32* @ATH5K_DEBUG_DMA, align 4
  %196 = load i32, i32* %5, align 4
  %197 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, ...) @ATH5K_DBG(%struct.ath5k_hw* %194, i32 %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %193, %186
  br label %199

199:                                              ; preds = %198, %137, %130
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @AR5K_QUEUE_MISC(i32 %201)
  %203 = load i32, i32* @AR5K_QCU_MISC_DCU_EARLY, align 4
  %204 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %200, i32 %202, i32 %203)
  %205 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %206 = load i32, i32* @AR5K_QCU_TXD, align 4
  %207 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %205, i32 0, i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %199
  %211 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %212 = load i32, i32* @ATH5K_DEBUG_DMA, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, ...) @ATH5K_DBG(%struct.ath5k_hw* %211, i32 %212, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %213, i32 %214)
  %216 = load i32, i32* @EBUSY, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %220

218:                                              ; preds = %199
  br label %219

219:                                              ; preds = %218, %67
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %219, %210, %64, %26
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @AR5K_ASSERT_ENTRY(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_MISC(i32) #1

declare dso_local i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i64 @AR5K_REG_READ_Q(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, ...) #1

declare dso_local i32 @AR5K_QUEUE_STATUS(i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
