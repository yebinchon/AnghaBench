; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_hdlc_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_hdlc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i8, i32, %struct.TYPE_13__, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@HDLC_FLAG_TXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_DPLL = common dso_local global i32 0, align 4
@TXDMA = common dso_local global i64 0, align 8
@DIR = common dso_local global i64 0, align 8
@RXDMA = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i8 0, align 1
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@HDLC_CRC_16_CCITT = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i8 0, align 1
@BIT1 = common dso_local global i8 0, align 1
@MD0 = common dso_local global i64 0, align 8
@MD1 = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i8 0, align 1
@BIT7 = common dso_local global i8 0, align 1
@BIT6 = common dso_local global i8 0, align 1
@HDLC_FLAG_DPLL_DIV16 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i8 0, align 1
@HDLC_FLAG_DPLL_DIV8 = common dso_local global i32 0, align 4
@MD2 = common dso_local global i64 0, align 8
@HDLC_FLAG_RXC_BRG = common dso_local global i32 0, align 4
@RXS = common dso_local global i64 0, align 8
@HDLC_FLAG_TXC_BRG = common dso_local global i32 0, align 4
@TXS = common dso_local global i64 0, align 8
@BIT0 = common dso_local global i32 0, align 4
@RRC = common dso_local global i64 0, align 8
@rx_active_fifo_level = common dso_local global i8 0, align 1
@TRC0 = common dso_local global i64 0, align 8
@tx_active_fifo_level = common dso_local global i8 0, align 1
@TRC1 = common dso_local global i64 0, align 8
@tx_negate_fifo_level = common dso_local global i32 0, align 4
@DMR = common dso_local global i64 0, align 8
@CPB = common dso_local global i64 0, align 8
@TXINTE = common dso_local global i8 0, align 1
@RXINTE = common dso_local global i8 0, align 1
@IE0 = common dso_local global i64 0, align 8
@SerialSignal_RTS = common dso_local global i32 0, align 4
@CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @hdlc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_mode(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %6 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %7 = add nsw i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %8
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = load i64, i64* @TXDMA, align 8
  %16 = load i64, i64* @DIR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @write_reg(%struct.TYPE_14__* %14, i64 %17, i8 zeroext 0)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = load i64, i64* @RXDMA, align 8
  %21 = load i64, i64* @DIR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @write_reg(%struct.TYPE_14__* %19, i64 %22, i8 zeroext 0)
  store i8 -127, i8* %3, align 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i8, i8* @BIT4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %3, align 1
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i8, i8* @BIT4, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %3, align 1
  br label %53

53:                                               ; preds = %46, %38
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HDLC_CRC_16_CCITT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i8, i8* @BIT2, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @BIT1, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = load i8, i8* %3, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %3, align 1
  br label %70

70:                                               ; preds = %60, %53
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = load i64, i64* @MD0, align 8
  %73 = load i8, i8* %3, align 1
  %74 = call i32 @write_reg(%struct.TYPE_14__* %71, i64 %72, i8 zeroext %73)
  store i8 0, i8* %3, align 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = load i64, i64* @MD1, align 8
  %77 = load i8, i8* %3, align 1
  %78 = call i32 @write_reg(%struct.TYPE_14__* %75, i64 %76, i8 zeroext %77)
  store i8 0, i8* %3, align 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %117 [
    i32 129, label %83
    i32 133, label %90
    i32 132, label %100
    i32 134, label %110
  ]

83:                                               ; preds = %70
  %84 = load i8, i8* @BIT5, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* %3, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %3, align 1
  br label %117

90:                                               ; preds = %70
  %91 = load i8, i8* @BIT7, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @BIT5, align 1
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %92, %94
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %3, align 1
  br label %117

100:                                              ; preds = %70
  %101 = load i8, i8* @BIT7, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @BIT6, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %102, %104
  %106 = load i8, i8* %3, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %3, align 1
  br label %117

110:                                              ; preds = %70
  %111 = load i8, i8* @BIT7, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* %3, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %3, align 1
  br label %117

117:                                              ; preds = %70, %110, %100, %90, %83
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @HDLC_FLAG_DPLL_DIV16, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  store i32 16, i32* %4, align 4
  %126 = load i8, i8* @BIT3, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* %3, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %129, %127
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %3, align 1
  br label %149

132:                                              ; preds = %117
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @HDLC_FLAG_DPLL_DIV8, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 8, i32* %4, align 4
  br label %148

141:                                              ; preds = %132
  store i32 32, i32* %4, align 4
  %142 = load i8, i8* @BIT4, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* %3, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %145, %143
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %3, align 1
  br label %148

148:                                              ; preds = %141, %140
  br label %149

149:                                              ; preds = %148, %125
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %151 = load i64, i64* @MD2, align 8
  %152 = load i8, i8* %3, align 1
  %153 = call i32 @write_reg(%struct.TYPE_14__* %150, i64 %151, i8 zeroext %152)
  store i8 0, i8* %3, align 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @HDLC_FLAG_RXC_BRG, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %149
  %162 = load i8, i8* @BIT6, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* %3, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %165, %163
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %3, align 1
  br label %168

168:                                              ; preds = %161, %149
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %168
  %177 = load i8, i8* @BIT6, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8, i8* @BIT5, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %178, %180
  %182 = load i8, i8* %3, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %183, %181
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %3, align 1
  br label %186

186:                                              ; preds = %176, %168
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %188 = load i64, i64* @RXS, align 8
  %189 = load i8, i8* %3, align 1
  %190 = call i32 @write_reg(%struct.TYPE_14__* %187, i64 %188, i8 zeroext %189)
  store i8 0, i8* %3, align 1
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %186
  %199 = load i8, i8* @BIT6, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8, i8* %3, align 1
  %202 = zext i8 %201 to i32
  %203 = or i32 %202, %200
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %3, align 1
  br label %205

205:                                              ; preds = %198, %186
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %205
  %214 = load i8, i8* @BIT6, align 1
  %215 = zext i8 %214 to i32
  %216 = load i8, i8* @BIT5, align 1
  %217 = zext i8 %216 to i32
  %218 = add nsw i32 %215, %217
  %219 = load i8, i8* %3, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %220, %218
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %3, align 1
  br label %223

223:                                              ; preds = %213, %205
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %225 = load i64, i64* @TXS, align 8
  %226 = load i8, i8* %3, align 1
  %227 = call i32 @write_reg(%struct.TYPE_14__* %224, i64 %225, i8 zeroext %226)
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %223
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %4, align 4
  %242 = mul nsw i32 %240, %241
  %243 = call i32 @set_rate(%struct.TYPE_14__* %236, i32 %242)
  br label %251

244:                                              ; preds = %223
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @set_rate(%struct.TYPE_14__* %245, i32 %249)
  br label %251

251:                                              ; preds = %244, %235
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %251
  %260 = load i32, i32* @BIT0, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = mul nsw i32 %263, 2
  %265 = shl i32 %260, %264
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %268, i64 0
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %265
  store i32 %273, i32* %271, align 4
  br label %290

274:                                              ; preds = %251
  %275 = load i32, i32* @BIT0, align 4
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = mul nsw i32 %278, 2
  %280 = shl i32 %275, %279
  %281 = xor i32 %280, -1
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %284, i64 0
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, %281
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %274, %259
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %292 = call i32 @write_control_reg(%struct.TYPE_14__* %291)
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %294 = load i64, i64* @RRC, align 8
  %295 = load i8, i8* @rx_active_fifo_level, align 1
  %296 = call i32 @write_reg(%struct.TYPE_14__* %293, i64 %294, i8 zeroext %295)
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %298 = load i64, i64* @TRC0, align 8
  %299 = load i8, i8* @tx_active_fifo_level, align 1
  %300 = call i32 @write_reg(%struct.TYPE_14__* %297, i64 %298, i8 zeroext %299)
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %302 = load i64, i64* @TRC1, align 8
  %303 = load i32, i32* @tx_negate_fifo_level, align 4
  %304 = sub nsw i32 %303, 1
  %305 = trunc i32 %304 to i8
  %306 = call i32 @write_reg(%struct.TYPE_14__* %301, i64 %302, i8 zeroext %305)
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %308 = load i64, i64* @TXDMA, align 8
  %309 = load i64, i64* @DMR, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @write_reg(%struct.TYPE_14__* %307, i64 %310, i8 zeroext 20)
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %313 = load i64, i64* @RXDMA, align 8
  %314 = load i64, i64* @DMR, align 8
  %315 = add nsw i64 %313, %314
  %316 = call i32 @write_reg(%struct.TYPE_14__* %312, i64 %315, i8 zeroext 20)
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %318 = load i64, i64* @RXDMA, align 8
  %319 = load i64, i64* @CPB, align 8
  %320 = add nsw i64 %318, %319
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = ashr i32 %323, 16
  %325 = trunc i32 %324 to i8
  %326 = call i32 @write_reg(%struct.TYPE_14__* %317, i64 %320, i8 zeroext %325)
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %328 = load i64, i64* @TXDMA, align 8
  %329 = load i64, i64* @CPB, align 8
  %330 = add nsw i64 %328, %329
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = ashr i32 %333, 16
  %335 = trunc i32 %334 to i8
  %336 = call i32 @write_reg(%struct.TYPE_14__* %327, i64 %330, i8 zeroext %335)
  %337 = load i8, i8* @TXINTE, align 1
  %338 = zext i8 %337 to i32
  %339 = load i8, i8* @RXINTE, align 1
  %340 = zext i8 %339 to i32
  %341 = add nsw i32 %338, %340
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 2
  %344 = load i8, i8* %343, align 8
  %345 = zext i8 %344 to i32
  %346 = or i32 %345, %341
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %343, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %349 = load i64, i64* @IE0, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 2
  %352 = load i8, i8* %351, align 8
  %353 = call i32 @write_reg(%struct.TYPE_14__* %348, i64 %349, i8 zeroext %352)
  store i8 16, i8* %3, align 1
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @SerialSignal_RTS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %290
  %361 = load i8, i8* %3, align 1
  %362 = zext i8 %361 to i32
  %363 = or i32 %362, 1
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %3, align 1
  br label %365

365:                                              ; preds = %360, %290
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %367 = load i64, i64* @CTL, align 8
  %368 = load i8, i8* %3, align 1
  %369 = call i32 @write_reg(%struct.TYPE_14__* %366, i64 %367, i8 zeroext %368)
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %371 = call i32 @tx_set_idle(%struct.TYPE_14__* %370)
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %373 = call i32 @tx_stop(%struct.TYPE_14__* %372)
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %375 = call i32 @rx_stop(%struct.TYPE_14__* %374)
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @set_rate(%struct.TYPE_14__* %376, i32 %380)
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 4
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %365
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %389 = call i32 @enable_loopback(%struct.TYPE_14__* %388, i32 1)
  br label %390

390:                                              ; preds = %387, %365
  ret void
}

declare dso_local i32 @write_reg(%struct.TYPE_14__*, i64, i8 zeroext) #1

declare dso_local i32 @set_rate(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @write_control_reg(%struct.TYPE_14__*) #1

declare dso_local i32 @tx_set_idle(%struct.TYPE_14__*) #1

declare dso_local i32 @tx_stop(%struct.TYPE_14__*) #1

declare dso_local i32 @rx_stop(%struct.TYPE_14__*) #1

declare dso_local i32 @enable_loopback(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
