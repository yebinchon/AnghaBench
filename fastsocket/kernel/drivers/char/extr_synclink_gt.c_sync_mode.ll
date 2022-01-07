; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_sync_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_MASTER = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i16 0, align 2
@BIT14 = common dso_local global i16 0, align 2
@BIT13 = common dso_local global i16 0, align 2
@BIT15 = common dso_local global i16 0, align 2
@MGSL_INTERFACE_RTS_EN = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i16 0, align 2
@BIT10 = common dso_local global i16 0, align 2
@BIT11 = common dso_local global i16 0, align 2
@BIT12 = common dso_local global i16 0, align 2
@HDLC_CRC_MASK = common dso_local global i32 0, align 4
@BIT9 = common dso_local global i16 0, align 2
@BIT8 = common dso_local global i16 0, align 2
@HDLC_PREAMBLE_PATTERN_NONE = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i16 0, align 2
@BIT5 = common dso_local global i16 0, align 2
@BIT4 = common dso_local global i16 0, align 2
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i16 0, align 2
@TCR = common dso_local global i32 0, align 4
@TPR = common dso_local global i32 0, align 4
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_BRG = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_RXCPIN = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_BRG = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i16 0, align 2
@HDLC_FLAG_RXC_TXCPIN = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i16 0, align 2
@CCR = common dso_local global i32 0, align 4
@SCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_mode(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @IRQ_ALL, align 4
  %6 = load i32, i32* @IRQ_MASTER, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @slgt_irq_off(%struct.slgt_info* %4, i32 %7)
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = call i32 @tx_stop(%struct.slgt_info* %9)
  %11 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %12 = call i32 @rx_stop(%struct.slgt_info* %11)
  %13 = load i16, i16* @BIT2, align 2
  store i16 %13, i16* %3, align 2
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %42 [
    i32 129, label %18
    i32 130, label %28
    i32 128, label %35
  ]

18:                                               ; preds = %1
  %19 = load i16, i16* @BIT14, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @BIT13, align 2
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %20, %22
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %3, align 2
  br label %42

28:                                               ; preds = %1
  %29 = load i16, i16* @BIT15, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %3, align 2
  br label %42

35:                                               ; preds = %1
  %36 = load i16, i16* @BIT13, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %3, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %3, align 2
  br label %42

42:                                               ; preds = %1, %35, %28, %18
  %43 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MGSL_INTERFACE_RTS_EN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i16, i16* @BIT7, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %3, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %53, %51
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %3, align 2
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %58 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %125 [
    i32 141, label %61
    i32 139, label %68
    i32 140, label %75
    i32 144, label %85
    i32 143, label %92
    i32 145, label %102
    i32 142, label %112
  ]

61:                                               ; preds = %56
  %62 = load i16, i16* @BIT10, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %3, align 2
  %65 = zext i16 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %3, align 2
  br label %125

68:                                               ; preds = %56
  %69 = load i16, i16* @BIT11, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %3, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %3, align 2
  br label %125

75:                                               ; preds = %56
  %76 = load i16, i16* @BIT11, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @BIT10, align 2
  %79 = zext i16 %78 to i32
  %80 = add nsw i32 %77, %79
  %81 = load i16, i16* %3, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %3, align 2
  br label %125

85:                                               ; preds = %56
  %86 = load i16, i16* @BIT12, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* %3, align 2
  %89 = zext i16 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %3, align 2
  br label %125

92:                                               ; preds = %56
  %93 = load i16, i16* @BIT12, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* @BIT10, align 2
  %96 = zext i16 %95 to i32
  %97 = add nsw i32 %94, %96
  %98 = load i16, i16* %3, align 2
  %99 = zext i16 %98 to i32
  %100 = or i32 %99, %97
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %3, align 2
  br label %125

102:                                              ; preds = %56
  %103 = load i16, i16* @BIT12, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @BIT11, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %104, %106
  %108 = load i16, i16* %3, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %3, align 2
  br label %125

112:                                              ; preds = %56
  %113 = load i16, i16* @BIT12, align 2
  %114 = zext i16 %113 to i32
  %115 = load i16, i16* @BIT11, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = load i16, i16* @BIT10, align 2
  %119 = zext i16 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = load i16, i16* %3, align 2
  %122 = zext i16 %121 to i32
  %123 = or i32 %122, %120
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %3, align 2
  br label %125

125:                                              ; preds = %56, %112, %102, %92, %85, %75, %68, %61
  %126 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %127 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HDLC_CRC_MASK, align 4
  %131 = and i32 %129, %130
  switch i32 %131, label %149 [
    i32 147, label %132
    i32 146, label %139
  ]

132:                                              ; preds = %125
  %133 = load i16, i16* @BIT9, align 2
  %134 = zext i16 %133 to i32
  %135 = load i16, i16* %3, align 2
  %136 = zext i16 %135 to i32
  %137 = or i32 %136, %134
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %3, align 2
  br label %149

139:                                              ; preds = %125
  %140 = load i16, i16* @BIT9, align 2
  %141 = zext i16 %140 to i32
  %142 = load i16, i16* @BIT8, align 2
  %143 = zext i16 %142 to i32
  %144 = add nsw i32 %141, %143
  %145 = load i16, i16* %3, align 2
  %146 = zext i16 %145 to i32
  %147 = or i32 %146, %144
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %3, align 2
  br label %149

149:                                              ; preds = %125, %139, %132
  %150 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %151 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @HDLC_PREAMBLE_PATTERN_NONE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load i16, i16* @BIT6, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* %3, align 2
  %160 = zext i16 %159 to i32
  %161 = or i32 %160, %158
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %3, align 2
  br label %163

163:                                              ; preds = %156, %149
  %164 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %165 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %192 [
    i32 138, label %168
    i32 137, label %175
    i32 136, label %182
  ]

168:                                              ; preds = %163
  %169 = load i16, i16* @BIT5, align 2
  %170 = zext i16 %169 to i32
  %171 = load i16, i16* %3, align 2
  %172 = zext i16 %171 to i32
  %173 = or i32 %172, %170
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %3, align 2
  br label %192

175:                                              ; preds = %163
  %176 = load i16, i16* @BIT4, align 2
  %177 = zext i16 %176 to i32
  %178 = load i16, i16* %3, align 2
  %179 = zext i16 %178 to i32
  %180 = or i32 %179, %177
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %3, align 2
  br label %192

182:                                              ; preds = %163
  %183 = load i16, i16* @BIT5, align 2
  %184 = zext i16 %183 to i32
  %185 = load i16, i16* @BIT4, align 2
  %186 = zext i16 %185 to i32
  %187 = add nsw i32 %184, %186
  %188 = load i16, i16* %3, align 2
  %189 = zext i16 %188 to i32
  %190 = or i32 %189, %187
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %3, align 2
  br label %192

192:                                              ; preds = %163, %182, %175, %168
  %193 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %194 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %192
  %201 = load i16, i16* @BIT0, align 2
  %202 = zext i16 %201 to i32
  %203 = load i16, i16* %3, align 2
  %204 = zext i16 %203 to i32
  %205 = or i32 %204, %202
  %206 = trunc i32 %205 to i16
  store i16 %206, i16* %3, align 2
  br label %207

207:                                              ; preds = %200, %192
  %208 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %209 = load i32, i32* @TCR, align 4
  %210 = load i16, i16* %3, align 2
  %211 = call i32 @wr_reg16(%struct.slgt_info* %208, i32 %209, i16 zeroext %210)
  %212 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %213 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  switch i32 %215, label %221 [
    i32 133, label %216
    i32 132, label %217
    i32 131, label %218
    i32 134, label %219
    i32 135, label %220
  ]

216:                                              ; preds = %207
  store i16 126, i16* %3, align 2
  br label %222

217:                                              ; preds = %207
  store i16 255, i16* %3, align 2
  br label %222

218:                                              ; preds = %207
  store i16 0, i16* %3, align 2
  br label %222

219:                                              ; preds = %207
  store i16 85, i16* %3, align 2
  br label %222

220:                                              ; preds = %207
  store i16 170, i16* %3, align 2
  br label %222

221:                                              ; preds = %207
  store i16 126, i16* %3, align 2
  br label %222

222:                                              ; preds = %221, %220, %219, %218, %217, %216
  %223 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %224 = load i32, i32* @TPR, align 4
  %225 = load i16, i16* %3, align 2
  %226 = trunc i16 %225 to i8
  %227 = call i32 @wr_reg8(%struct.slgt_info* %223, i32 %224, i8 zeroext %226)
  store i16 0, i16* %3, align 2
  %228 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %229 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  switch i32 %231, label %256 [
    i32 129, label %232
    i32 130, label %242
    i32 128, label %249
  ]

232:                                              ; preds = %222
  %233 = load i16, i16* @BIT14, align 2
  %234 = zext i16 %233 to i32
  %235 = load i16, i16* @BIT13, align 2
  %236 = zext i16 %235 to i32
  %237 = add nsw i32 %234, %236
  %238 = load i16, i16* %3, align 2
  %239 = zext i16 %238 to i32
  %240 = or i32 %239, %237
  %241 = trunc i32 %240 to i16
  store i16 %241, i16* %3, align 2
  br label %256

242:                                              ; preds = %222
  %243 = load i16, i16* @BIT15, align 2
  %244 = zext i16 %243 to i32
  %245 = load i16, i16* %3, align 2
  %246 = zext i16 %245 to i32
  %247 = or i32 %246, %244
  %248 = trunc i32 %247 to i16
  store i16 %248, i16* %3, align 2
  br label %256

249:                                              ; preds = %222
  %250 = load i16, i16* @BIT13, align 2
  %251 = zext i16 %250 to i32
  %252 = load i16, i16* %3, align 2
  %253 = zext i16 %252 to i32
  %254 = or i32 %253, %251
  %255 = trunc i32 %254 to i16
  store i16 %255, i16* %3, align 2
  br label %256

256:                                              ; preds = %222, %249, %242, %232
  %257 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %258 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  switch i32 %260, label %325 [
    i32 141, label %261
    i32 139, label %268
    i32 140, label %275
    i32 144, label %285
    i32 143, label %292
    i32 145, label %302
    i32 142, label %312
  ]

261:                                              ; preds = %256
  %262 = load i16, i16* @BIT10, align 2
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* %3, align 2
  %265 = zext i16 %264 to i32
  %266 = or i32 %265, %263
  %267 = trunc i32 %266 to i16
  store i16 %267, i16* %3, align 2
  br label %325

268:                                              ; preds = %256
  %269 = load i16, i16* @BIT11, align 2
  %270 = zext i16 %269 to i32
  %271 = load i16, i16* %3, align 2
  %272 = zext i16 %271 to i32
  %273 = or i32 %272, %270
  %274 = trunc i32 %273 to i16
  store i16 %274, i16* %3, align 2
  br label %325

275:                                              ; preds = %256
  %276 = load i16, i16* @BIT11, align 2
  %277 = zext i16 %276 to i32
  %278 = load i16, i16* @BIT10, align 2
  %279 = zext i16 %278 to i32
  %280 = add nsw i32 %277, %279
  %281 = load i16, i16* %3, align 2
  %282 = zext i16 %281 to i32
  %283 = or i32 %282, %280
  %284 = trunc i32 %283 to i16
  store i16 %284, i16* %3, align 2
  br label %325

285:                                              ; preds = %256
  %286 = load i16, i16* @BIT12, align 2
  %287 = zext i16 %286 to i32
  %288 = load i16, i16* %3, align 2
  %289 = zext i16 %288 to i32
  %290 = or i32 %289, %287
  %291 = trunc i32 %290 to i16
  store i16 %291, i16* %3, align 2
  br label %325

292:                                              ; preds = %256
  %293 = load i16, i16* @BIT12, align 2
  %294 = zext i16 %293 to i32
  %295 = load i16, i16* @BIT10, align 2
  %296 = zext i16 %295 to i32
  %297 = add nsw i32 %294, %296
  %298 = load i16, i16* %3, align 2
  %299 = zext i16 %298 to i32
  %300 = or i32 %299, %297
  %301 = trunc i32 %300 to i16
  store i16 %301, i16* %3, align 2
  br label %325

302:                                              ; preds = %256
  %303 = load i16, i16* @BIT12, align 2
  %304 = zext i16 %303 to i32
  %305 = load i16, i16* @BIT11, align 2
  %306 = zext i16 %305 to i32
  %307 = add nsw i32 %304, %306
  %308 = load i16, i16* %3, align 2
  %309 = zext i16 %308 to i32
  %310 = or i32 %309, %307
  %311 = trunc i32 %310 to i16
  store i16 %311, i16* %3, align 2
  br label %325

312:                                              ; preds = %256
  %313 = load i16, i16* @BIT12, align 2
  %314 = zext i16 %313 to i32
  %315 = load i16, i16* @BIT11, align 2
  %316 = zext i16 %315 to i32
  %317 = add nsw i32 %314, %316
  %318 = load i16, i16* @BIT10, align 2
  %319 = zext i16 %318 to i32
  %320 = add nsw i32 %317, %319
  %321 = load i16, i16* %3, align 2
  %322 = zext i16 %321 to i32
  %323 = or i32 %322, %320
  %324 = trunc i32 %323 to i16
  store i16 %324, i16* %3, align 2
  br label %325

325:                                              ; preds = %256, %312, %302, %292, %285, %275, %268, %261
  %326 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %327 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @HDLC_CRC_MASK, align 4
  %331 = and i32 %329, %330
  switch i32 %331, label %349 [
    i32 147, label %332
    i32 146, label %339
  ]

332:                                              ; preds = %325
  %333 = load i16, i16* @BIT9, align 2
  %334 = zext i16 %333 to i32
  %335 = load i16, i16* %3, align 2
  %336 = zext i16 %335 to i32
  %337 = or i32 %336, %334
  %338 = trunc i32 %337 to i16
  store i16 %338, i16* %3, align 2
  br label %349

339:                                              ; preds = %325
  %340 = load i16, i16* @BIT9, align 2
  %341 = zext i16 %340 to i32
  %342 = load i16, i16* @BIT8, align 2
  %343 = zext i16 %342 to i32
  %344 = add nsw i32 %341, %343
  %345 = load i16, i16* %3, align 2
  %346 = zext i16 %345 to i32
  %347 = or i32 %346, %344
  %348 = trunc i32 %347 to i16
  store i16 %348, i16* %3, align 2
  br label %349

349:                                              ; preds = %325, %339, %332
  %350 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %351 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %349
  %358 = load i16, i16* @BIT0, align 2
  %359 = zext i16 %358 to i32
  %360 = load i16, i16* %3, align 2
  %361 = zext i16 %360 to i32
  %362 = or i32 %361, %359
  %363 = trunc i32 %362 to i16
  store i16 %363, i16* %3, align 2
  br label %364

364:                                              ; preds = %357, %349
  %365 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %366 = load i32, i32* @RCR, align 4
  %367 = load i16, i16* %3, align 2
  %368 = call i32 @wr_reg16(%struct.slgt_info* %365, i32 %366, i16 zeroext %367)
  store i16 0, i16* %3, align 2
  %369 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %370 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %402

376:                                              ; preds = %364
  %377 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %378 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %376
  %385 = load i16, i16* @BIT6, align 2
  %386 = zext i16 %385 to i32
  %387 = load i16, i16* @BIT5, align 2
  %388 = zext i16 %387 to i32
  %389 = add nsw i32 %386, %388
  %390 = load i16, i16* %3, align 2
  %391 = zext i16 %390 to i32
  %392 = or i32 %391, %389
  %393 = trunc i32 %392 to i16
  store i16 %393, i16* %3, align 2
  br label %401

394:                                              ; preds = %376
  %395 = load i16, i16* @BIT6, align 2
  %396 = zext i16 %395 to i32
  %397 = load i16, i16* %3, align 2
  %398 = zext i16 %397 to i32
  %399 = or i32 %398, %396
  %400 = trunc i32 %399 to i16
  store i16 %400, i16* %3, align 2
  br label %401

401:                                              ; preds = %394, %384
  br label %434

402:                                              ; preds = %364
  %403 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %404 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %402
  %411 = load i16, i16* @BIT7, align 2
  %412 = zext i16 %411 to i32
  %413 = load i16, i16* %3, align 2
  %414 = zext i16 %413 to i32
  %415 = or i32 %414, %412
  %416 = trunc i32 %415 to i16
  store i16 %416, i16* %3, align 2
  br label %433

417:                                              ; preds = %402
  %418 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %419 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @HDLC_FLAG_TXC_RXCPIN, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %432

425:                                              ; preds = %417
  %426 = load i16, i16* @BIT5, align 2
  %427 = zext i16 %426 to i32
  %428 = load i16, i16* %3, align 2
  %429 = zext i16 %428 to i32
  %430 = or i32 %429, %427
  %431 = trunc i32 %430 to i16
  store i16 %431, i16* %3, align 2
  br label %432

432:                                              ; preds = %425, %417
  br label %433

433:                                              ; preds = %432, %410
  br label %434

434:                                              ; preds = %433, %401
  %435 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %436 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i32 0, i32 5
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @HDLC_FLAG_RXC_BRG, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %434
  %443 = load i16, i16* @BIT3, align 2
  %444 = zext i16 %443 to i32
  %445 = load i16, i16* %3, align 2
  %446 = zext i16 %445 to i32
  %447 = or i32 %446, %444
  %448 = trunc i32 %447 to i16
  store i16 %448, i16* %3, align 2
  br label %481

449:                                              ; preds = %434
  %450 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %451 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %449
  %458 = load i16, i16* @BIT4, align 2
  %459 = zext i16 %458 to i32
  %460 = load i16, i16* %3, align 2
  %461 = zext i16 %460 to i32
  %462 = or i32 %461, %459
  %463 = trunc i32 %462 to i16
  store i16 %463, i16* %3, align 2
  br label %480

464:                                              ; preds = %449
  %465 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %466 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %466, i32 0, i32 5
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* @HDLC_FLAG_RXC_TXCPIN, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %479

472:                                              ; preds = %464
  %473 = load i16, i16* @BIT2, align 2
  %474 = zext i16 %473 to i32
  %475 = load i16, i16* %3, align 2
  %476 = zext i16 %475 to i32
  %477 = or i32 %476, %474
  %478 = trunc i32 %477 to i16
  store i16 %478, i16* %3, align 2
  br label %479

479:                                              ; preds = %472, %464
  br label %480

480:                                              ; preds = %479, %457
  br label %481

481:                                              ; preds = %480, %442
  %482 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %483 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %483, i32 0, i32 6
  %485 = load i32, i32* %484, align 8
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %497

487:                                              ; preds = %481
  %488 = load i16, i16* @BIT1, align 2
  %489 = zext i16 %488 to i32
  %490 = load i16, i16* @BIT0, align 2
  %491 = zext i16 %490 to i32
  %492 = add nsw i32 %489, %491
  %493 = load i16, i16* %3, align 2
  %494 = zext i16 %493 to i32
  %495 = or i32 %494, %492
  %496 = trunc i32 %495 to i16
  store i16 %496, i16* %3, align 2
  br label %497

497:                                              ; preds = %487, %481
  %498 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %499 = load i32, i32* @CCR, align 4
  %500 = load i16, i16* %3, align 2
  %501 = trunc i16 %500 to i8
  %502 = call i32 @wr_reg8(%struct.slgt_info* %498, i32 %499, i8 zeroext %501)
  %503 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %504 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %504, i32 0, i32 5
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %508 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %509 = add nsw i32 %507, %508
  %510 = and i32 %506, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %547

512:                                              ; preds = %497
  %513 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %514 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  switch i32 %516, label %526 [
    i32 144, label %517
    i32 143, label %517
    i32 145, label %519
    i32 142, label %519
  ]

517:                                              ; preds = %512, %512
  %518 = load i16, i16* @BIT7, align 2
  store i16 %518, i16* %3, align 2
  br label %528

519:                                              ; preds = %512, %512
  %520 = load i16, i16* @BIT7, align 2
  %521 = zext i16 %520 to i32
  %522 = load i16, i16* @BIT6, align 2
  %523 = zext i16 %522 to i32
  %524 = add nsw i32 %521, %523
  %525 = trunc i32 %524 to i16
  store i16 %525, i16* %3, align 2
  br label %528

526:                                              ; preds = %512
  %527 = load i16, i16* @BIT6, align 2
  store i16 %527, i16* %3, align 2
  br label %528

528:                                              ; preds = %526, %519, %517
  %529 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %530 = load i32, i32* @RCR, align 4
  %531 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %532 = load i32, i32* @RCR, align 4
  %533 = call zeroext i16 @rd_reg16(%struct.slgt_info* %531, i32 %532)
  %534 = zext i16 %533 to i32
  %535 = load i16, i16* %3, align 2
  %536 = zext i16 %535 to i32
  %537 = or i32 %534, %536
  %538 = trunc i32 %537 to i16
  %539 = call i32 @wr_reg16(%struct.slgt_info* %529, i32 %530, i16 zeroext %538)
  %540 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %541 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %542 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %542, i32 0, i32 6
  %544 = load i32, i32* %543, align 8
  %545 = mul nsw i32 %544, 16
  %546 = call i32 @set_rate(%struct.slgt_info* %540, i32 %545)
  br label %554

547:                                              ; preds = %497
  %548 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %549 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %550 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %550, i32 0, i32 6
  %552 = load i32, i32* %551, align 8
  %553 = call i32 @set_rate(%struct.slgt_info* %548, i32 %552)
  br label %554

554:                                              ; preds = %547, %528
  %555 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %556 = call i32 @tx_set_idle(%struct.slgt_info* %555)
  %557 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %558 = call i32 @msc_set_vcr(%struct.slgt_info* %557)
  %559 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %560 = load i32, i32* @SCR, align 4
  %561 = load i16, i16* @BIT15, align 2
  %562 = zext i16 %561 to i32
  %563 = load i16, i16* @BIT14, align 2
  %564 = zext i16 %563 to i32
  %565 = add nsw i32 %562, %564
  %566 = load i16, i16* @BIT0, align 2
  %567 = zext i16 %566 to i32
  %568 = add nsw i32 %565, %567
  %569 = trunc i32 %568 to i16
  %570 = call i32 @wr_reg16(%struct.slgt_info* %559, i32 %560, i16 zeroext %569)
  %571 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %572 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %572, i32 0, i32 7
  %574 = load i64, i64* %573, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %579

576:                                              ; preds = %554
  %577 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %578 = call i32 @enable_loopback(%struct.slgt_info* %577)
  br label %579

579:                                              ; preds = %576, %554
  ret void
}

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i8 zeroext) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @set_rate(%struct.slgt_info*, i32) #1

declare dso_local i32 @tx_set_idle(%struct.slgt_info*) #1

declare dso_local i32 @msc_set_vcr(%struct.slgt_info*) #1

declare dso_local i32 @enable_loopback(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
