; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i32, i32, i64, i32*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyLICR = common dso_local global i64 0, align 8
@NR_PORTS = common dso_local global i32 0, align 4
@CyTxMpty = common dso_local global i8 0, align 1
@CyTxRdy = common dso_local global i8 0, align 1
@CyIER = common dso_local global i64 0, align 8
@CyNOTRANS = common dso_local global i8 0, align 1
@CyTEOIR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@cy_port = common dso_local global %struct.cyclades_port* null, align 8
@jiffies = common dso_local global i32 0, align 4
@CyTFTC = common dso_local global i64 0, align 8
@CyTDR = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@DEBUG_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cd2401_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd2401_tx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cyclades_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i64, i64* @BASE_ADDR, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* @CyLICR, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load volatile i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @NR_PORTS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22, %2
  %27 = load volatile i8, i8* @CyTxMpty, align 1
  %28 = zext i8 %27 to i32
  %29 = load volatile i8, i8* @CyTxRdy, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = xor i32 %31, -1
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* @CyIER, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load volatile i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, %32
  %39 = trunc i32 %38 to i8
  store volatile i8 %39, i8* %35, align 1
  %40 = load i8, i8* @CyNOTRANS, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* @CyTEOIR, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store volatile i8 %40, i8* %43, align 1
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %299

45:                                               ; preds = %22
  %46 = load %struct.cyclades_port*, %struct.cyclades_port** @cy_port, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %46, i64 %48
  store %struct.cyclades_port* %49, %struct.cyclades_port** %6, align 8
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %52 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %54 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp eq %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %45
  %58 = load volatile i8, i8* @CyTxMpty, align 1
  %59 = zext i8 %58 to i32
  %60 = load volatile i8, i8* @CyTxRdy, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = xor i32 %62, -1
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* @CyIER, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load volatile i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, %63
  %70 = trunc i32 %69 to i8
  store volatile i8 %70, i8* %66, align 1
  %71 = load i8, i8* @CyNOTRANS, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* @CyTEOIR, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store volatile i8 %71, i8* %74, align 1
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %299

76:                                               ; preds = %45
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* @CyTFTC, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load volatile i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %9, align 4
  store i32 %81, i32* %10, align 4
  %82 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %83 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %76
  %87 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %88 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* @CyTDR, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store volatile i8 %91, i8* %94, align 1
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  %97 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %98 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %76
  %100 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %101 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* @CyTDR, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store volatile i8 0, i8* %107, align 1
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* @CyTDR, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store volatile i8 -127, i8* %110, align 1
  %111 = load i8*, i8** %7, align 8
  %112 = load i64, i64* @CyTDR, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store volatile i8 0, i8* %113, align 1
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* @CyTDR, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store volatile i8 -126, i8* %116, align 1
  %117 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %118 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 200
  %121 = load i32, i32* @HZ, align 4
  %122 = sdiv i32 %120, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %7, align 8
  %125 = load i64, i64* @CyTDR, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store volatile i8 %123, i8* %126, align 1
  %127 = load i8*, i8** %7, align 8
  %128 = load i64, i64* @CyTDR, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store volatile i8 0, i8* %129, align 1
  %130 = load i8*, i8** %7, align 8
  %131 = load i64, i64* @CyTDR, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store volatile i8 -125, i8* %132, align 1
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 7
  store i32 %134, i32* %9, align 4
  %135 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %136 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %104, %99
  br label %138

138:                                              ; preds = %272, %137
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %273

141:                                              ; preds = %138
  %142 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %143 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %141
  %147 = load volatile i8, i8* @CyTxMpty, align 1
  %148 = zext i8 %147 to i32
  %149 = load volatile i8, i8* @CyTxRdy, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %148, %150
  %152 = xor i32 %151, -1
  %153 = load i8*, i8** %7, align 8
  %154 = load i64, i64* @CyIER, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load volatile i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, %152
  %159 = trunc i32 %158 to i8
  store volatile i8 %159, i8* %155, align 1
  br label %273

160:                                              ; preds = %141
  %161 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %162 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load volatile i8, i8* @CyTxMpty, align 1
  %167 = zext i8 %166 to i32
  %168 = load volatile i8, i8* @CyTxRdy, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %167, %169
  %171 = xor i32 %170, -1
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* @CyIER, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load volatile i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, %171
  %178 = trunc i32 %177 to i8
  store volatile i8 %178, i8* %174, align 1
  br label %273

179:                                              ; preds = %160
  %180 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %181 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %180, i32 0, i32 5
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %188 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %187, i32 0, i32 5
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %186, %179
  %194 = load volatile i8, i8* @CyTxMpty, align 1
  %195 = zext i8 %194 to i32
  %196 = load volatile i8, i8* @CyTxRdy, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %195, %197
  %199 = xor i32 %198, -1
  %200 = load i8*, i8** %7, align 8
  %201 = load i64, i64* @CyIER, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load volatile i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, %199
  %206 = trunc i32 %205 to i8
  store volatile i8 %206, i8* %202, align 1
  br label %273

207:                                              ; preds = %186
  %208 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %209 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %212 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %207
  %219 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %220 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, -1
  store i64 %222, i64* %220, align 8
  %223 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %224 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  %227 = load i32, i32* @PAGE_SIZE, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = and i64 %226, %229
  %231 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %232 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %231, i32 0, i32 4
  store i64 %230, i64* %232, align 8
  %233 = load i32, i32* %11, align 4
  %234 = trunc i32 %233 to i8
  %235 = load i8*, i8** %7, align 8
  %236 = load i64, i64* @CyTDR, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store volatile i8 %234, i8* %237, align 1
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %9, align 4
  br label %272

240:                                              ; preds = %207
  %241 = load i32, i32* %9, align 4
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %243, label %270

243:                                              ; preds = %240
  %244 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %245 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, -1
  store i64 %247, i64* %245, align 8
  %248 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %249 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  %252 = load i32, i32* @PAGE_SIZE, align 4
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = and i64 %251, %254
  %256 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %257 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %256, i32 0, i32 4
  store i64 %255, i64* %257, align 8
  %258 = load i32, i32* %11, align 4
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %7, align 8
  %261 = load i64, i64* @CyTDR, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store volatile i8 %259, i8* %262, align 1
  %263 = load i8*, i8** %7, align 8
  %264 = load i64, i64* @CyTDR, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store volatile i8 0, i8* %265, align 1
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %9, align 4
  br label %271

270:                                              ; preds = %240
  br label %273

271:                                              ; preds = %243
  br label %272

272:                                              ; preds = %271, %218
  br label %138

273:                                              ; preds = %270, %193, %165, %146, %138
  %274 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %275 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @WAKEUP_CHARS, align 8
  %278 = icmp slt i64 %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %281 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %280, i32 0, i32 5
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = call i32 @tty_wakeup(%struct.TYPE_2__* %282)
  br label %284

284:                                              ; preds = %279, %273
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %292

289:                                              ; preds = %284
  %290 = load i8, i8* @CyNOTRANS, align 1
  %291 = zext i8 %290 to i32
  br label %292

292:                                              ; preds = %289, %288
  %293 = phi i32 [ 0, %288 ], [ %291, %289 ]
  %294 = trunc i32 %293 to i8
  %295 = load i8*, i8** %7, align 8
  %296 = load i64, i64* @CyTEOIR, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store volatile i8 %294, i8* %297, align 1
  %298 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %292, %57, %26
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @tty_wakeup(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
