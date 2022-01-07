; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cami2c = type { i32, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i8*, i64 }

@I2CMSR = common dso_local global i32 0, align 4
@I2CFSR = common dso_local global i32 0, align 4
@MSR_MAL = common dso_local global i64 0, align 8
@I2CMCR = common dso_local global i32 0, align 4
@I2CSCR = common dso_local global i32 0, align 4
@I2CSAR = common dso_local global i32 0, align 4
@IDS_DONE = common dso_local global i32 0, align 4
@IDS_ARBLOST = common dso_local global i32 0, align 4
@MSR_MNR = common dso_local global i64 0, align 8
@I2CFCR = common dso_local global i32 0, align 4
@FCR_RFRST = common dso_local global i64 0, align 8
@FCR_TFRST = common dso_local global i64 0, align 8
@MCR_MIE = common dso_local global i64 0, align 8
@MCR_FSB = common dso_local global i64 0, align 8
@I2CFIER = common dso_local global i32 0, align 4
@I2CMIER = common dso_local global i32 0, align 4
@MIE_MSTE = common dso_local global i64 0, align 8
@IDS_NACK = common dso_local global i32 0, align 4
@MSR_MAT = common dso_local global i64 0, align 8
@MSR_MST = common dso_local global i64 0, align 8
@FSR_RDF = common dso_local global i64 0, align 8
@I2CRFDR = common dso_local global i32 0, align 4
@IDF_STOP = common dso_local global i32 0, align 4
@I2CRXTX = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i32 0, align 4
@IDF_SEND = common dso_local global i32 0, align 4
@FSR_TEND = common dso_local global i64 0, align 8
@FSR_TDFE = common dso_local global i64 0, align 8
@I2CTFDR = common dso_local global i32 0, align 4
@FIER_TXIE = common dso_local global i64 0, align 8
@I2CSSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh7760_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cami2c*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.cami2c*
  store %struct.cami2c* %13, %struct.cami2c** %5, align 8
  %14 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %15 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %14, i32 0, i32 3
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  store %struct.i2c_msg* %16, %struct.i2c_msg** %6, align 8
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %21 = load i32, i32* @I2CMSR, align 4
  %22 = call i32 @IN32(%struct.cami2c* %20, i32 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %25 = load i32, i32* @I2CFSR, align 4
  %26 = call i32 @IN32(%struct.cami2c* %24, i32 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @MSR_MAL, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %34 = load i32, i32* @I2CMCR, align 4
  %35 = call i32 @OUT32(%struct.cami2c* %33, i32 %34, i64 0)
  %36 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %37 = load i32, i32* @I2CSCR, align 4
  %38 = call i32 @OUT32(%struct.cami2c* %36, i32 %37, i64 0)
  %39 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %40 = load i32, i32* @I2CSAR, align 4
  %41 = call i32 @OUT32(%struct.cami2c* %39, i32 %40, i64 0)
  %42 = load i32, i32* @IDS_DONE, align 4
  %43 = load i32, i32* @IDS_ARBLOST, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %46 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %324

49:                                               ; preds = %2
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @MSR_MNR, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = call i32 @udelay(i32 100)
  %56 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %57 = load i32, i32* @I2CFCR, align 4
  %58 = load i64, i64* @FCR_RFRST, align 8
  %59 = load i64, i64* @FCR_TFRST, align 8
  %60 = or i64 %58, %59
  %61 = call i32 @OUT32(%struct.cami2c* %56, i32 %57, i64 %60)
  %62 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %63 = load i32, i32* @I2CMCR, align 4
  %64 = load i64, i64* @MCR_MIE, align 8
  %65 = load i64, i64* @MCR_FSB, align 8
  %66 = or i64 %64, %65
  %67 = call i32 @OUT32(%struct.cami2c* %62, i32 %63, i64 %66)
  %68 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %69 = load i32, i32* @I2CFIER, align 4
  %70 = call i32 @OUT32(%struct.cami2c* %68, i32 %69, i64 0)
  %71 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %72 = load i32, i32* @I2CMIER, align 4
  %73 = load i64, i64* @MIE_MSTE, align 8
  %74 = call i32 @OUT32(%struct.cami2c* %71, i32 %72, i64 %73)
  %75 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %76 = load i32, i32* @I2CSCR, align 4
  %77 = call i32 @OUT32(%struct.cami2c* %75, i32 %76, i64 0)
  %78 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %79 = load i32, i32* @I2CSAR, align 4
  %80 = call i32 @OUT32(%struct.cami2c* %78, i32 %79, i64 0)
  %81 = load i32, i32* @IDS_NACK, align 4
  %82 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %83 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i64, i64* @MSR_MAT, align 8
  %87 = xor i64 %86, -1
  %88 = load i64, i64* %8, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %90

90:                                               ; preds = %54, %49
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @MSR_MST, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @IDS_DONE, align 4
  %97 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %98 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %324

101:                                              ; preds = %90
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @MSR_MAT, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %108 = load i32, i32* @I2CMCR, align 4
  %109 = load i64, i64* @MCR_MIE, align 8
  %110 = call i32 @OUT32(%struct.cami2c* %107, i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %113 = load i32, i32* @I2CFIER, align 4
  %114 = call i32 @IN32(%struct.cami2c* %112, i32 %113)
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @FSR_RDF, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %215

120:                                              ; preds = %111
  %121 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %122 = load i32, i32* @I2CRFDR, align 4
  %123 = call i32 @IN32(%struct.cami2c* %121, i32 %122)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %11, align 8
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp ule i64 %127, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %120
  %131 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %132 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IDF_STOP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %139 = load i32, i32* @I2CMCR, align 4
  %140 = load i64, i64* @MCR_MIE, align 8
  %141 = load i64, i64* @MCR_FSB, align 8
  %142 = or i64 %140, %141
  %143 = call i32 @OUT32(%struct.cami2c* %138, i32 %139, i64 %142)
  %144 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %145 = load i32, i32* @I2CFIER, align 4
  %146 = call i32 @OUT32(%struct.cami2c* %144, i32 %145, i64 0)
  %147 = call i32 @udelay(i32 5)
  br label %158

148:                                              ; preds = %130
  %149 = load i32, i32* @IDS_DONE, align 4
  %150 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %151 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i64, i64* @FSR_RDF, align 8
  %155 = xor i64 %154, -1
  %156 = load i64, i64* %9, align 8
  %157 = and i64 %156, %155
  store i64 %157, i64* %9, align 8
  br label %158

158:                                              ; preds = %148, %137
  br label %159

159:                                              ; preds = %158, %120
  br label %160

160:                                              ; preds = %170, %159
  %161 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i64, i64* %11, align 8
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %165, %160
  %169 = phi i1 [ false, %160 ], [ %167, %165 ]
  br i1 %169, label %170, label %183

170:                                              ; preds = %168
  %171 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %172 = load i32, i32* @I2CRXTX, align 4
  %173 = call i32 @IN32(%struct.cami2c* %171, i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %7, align 8
  store i8 %174, i8* %175, align 1
  %177 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %178 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, -1
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %11, align 8
  %182 = add i64 %181, -1
  store i64 %182, i64* %11, align 8
  br label %160

183:                                              ; preds = %168
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %183
  %189 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %190 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @FIFO_SIZE, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp uge i64 %191, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @FIFO_SIZE, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  br label %204

199:                                              ; preds = %188
  %200 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = sub i64 %202, 1
  br label %204

204:                                              ; preds = %199, %195
  %205 = phi i64 [ %198, %195 ], [ %203, %199 ]
  store i64 %205, i64* %11, align 8
  %206 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %207 = load i32, i32* @I2CFCR, align 4
  %208 = load i64, i64* @FCR_TFRST, align 8
  %209 = load i64, i64* %11, align 8
  %210 = and i64 %209, 15
  %211 = shl i64 %210, 4
  %212 = or i64 %208, %211
  %213 = call i32 @OUT32(%struct.cami2c* %206, i32 %207, i64 %212)
  br label %214

214:                                              ; preds = %204, %183
  br label %323

215:                                              ; preds = %111
  %216 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %217 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IDF_SEND, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %322

222:                                              ; preds = %215
  %223 = load i64, i64* %9, align 8
  %224 = load i64, i64* @FSR_TEND, align 8
  %225 = and i64 %223, %224
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %222
  %228 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %229 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %230, 1
  br i1 %231, label %232, label %257

232:                                              ; preds = %227
  %233 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %234 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @IDF_STOP, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %232
  %240 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %241 = load i32, i32* @I2CMCR, align 4
  %242 = load i64, i64* @MCR_MIE, align 8
  %243 = load i64, i64* @MCR_FSB, align 8
  %244 = or i64 %242, %243
  %245 = call i32 @OUT32(%struct.cami2c* %240, i32 %241, i64 %244)
  br label %256

246:                                              ; preds = %232
  %247 = load i32, i32* @IDS_DONE, align 4
  %248 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %249 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i64, i64* @FSR_TEND, align 8
  %253 = xor i64 %252, -1
  %254 = load i64, i64* %9, align 8
  %255 = and i64 %254, %253
  store i64 %255, i64* %9, align 8
  br label %256

256:                                              ; preds = %246, %239
  br label %257

257:                                              ; preds = %256, %227, %222
  %258 = load i64, i64* %9, align 8
  %259 = load i64, i64* @FSR_TDFE, align 8
  %260 = and i64 %258, %259
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %321

262:                                              ; preds = %257
  br label %263

263:                                              ; preds = %276, %262
  %264 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %265 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %270 = load i32, i32* @I2CTFDR, align 4
  %271 = call i32 @IN32(%struct.cami2c* %269, i32 %270)
  %272 = load i32, i32* @FIFO_SIZE, align 4
  %273 = icmp slt i32 %271, %272
  br label %274

274:                                              ; preds = %268, %263
  %275 = phi i1 [ false, %263 ], [ %273, %268 ]
  br i1 %275, label %276, label %288

276:                                              ; preds = %274
  %277 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %278 = load i32, i32* @I2CRXTX, align 4
  %279 = load i8*, i8** %7, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %7, align 8
  %281 = load i8, i8* %279, align 1
  %282 = sext i8 %281 to i64
  %283 = call i32 @OUT32(%struct.cami2c* %277, i32 %278, i64 %282)
  %284 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %285 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %286, -1
  store i64 %287, i64* %285, align 8
  br label %263

288:                                              ; preds = %274
  %289 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %290 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = icmp ult i64 %291, 1
  br i1 %292, label %293, label %302

293:                                              ; preds = %288
  %294 = load i64, i64* @FIER_TXIE, align 8
  %295 = xor i64 %294, -1
  %296 = load i64, i64* %10, align 8
  %297 = and i64 %296, %295
  store i64 %297, i64* %10, align 8
  %298 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %299 = load i32, i32* @I2CFIER, align 4
  %300 = load i64, i64* %10, align 8
  %301 = call i32 @OUT32(%struct.cami2c* %298, i32 %299, i64 %300)
  br label %320

302:                                              ; preds = %288
  %303 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %304 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i32, i32* @FIFO_SIZE, align 4
  %307 = sext i32 %306 to i64
  %308 = icmp uge i64 %305, %307
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 2, i32 0
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %11, align 8
  %312 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %313 = load i32, i32* @I2CFCR, align 4
  %314 = load i64, i64* @FCR_RFRST, align 8
  %315 = load i64, i64* %11, align 8
  %316 = and i64 %315, 3
  %317 = shl i64 %316, 2
  %318 = or i64 %314, %317
  %319 = call i32 @OUT32(%struct.cami2c* %312, i32 %313, i64 %318)
  br label %320

320:                                              ; preds = %302, %293
  br label %321

321:                                              ; preds = %320, %257
  br label %322

322:                                              ; preds = %321, %215
  br label %323

323:                                              ; preds = %322, %214
  br label %324

324:                                              ; preds = %323, %95, %32
  %325 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %326 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @IDS_DONE, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %324
  %332 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %333 = load i32, i32* @I2CMIER, align 4
  %334 = call i32 @OUT32(%struct.cami2c* %332, i32 %333, i64 0)
  %335 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %336 = load i32, i32* @I2CFIER, align 4
  %337 = call i32 @OUT32(%struct.cami2c* %335, i32 %336, i64 0)
  %338 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %339 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %338, i32 0, i32 3
  store %struct.i2c_msg* null, %struct.i2c_msg** %339, align 8
  %340 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %341 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %340, i32 0, i32 2
  %342 = call i32 @complete(i32* %341)
  br label %343

343:                                              ; preds = %331, %324
  %344 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %345 = load i32, i32* @I2CMSR, align 4
  %346 = load i64, i64* %8, align 8
  %347 = xor i64 %346, -1
  %348 = call i32 @OUT32(%struct.cami2c* %344, i32 %345, i64 %347)
  %349 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %350 = load i32, i32* @I2CFSR, align 4
  %351 = load i64, i64* %9, align 8
  %352 = xor i64 %351, -1
  %353 = call i32 @OUT32(%struct.cami2c* %349, i32 %350, i64 %352)
  %354 = load %struct.cami2c*, %struct.cami2c** %5, align 8
  %355 = load i32, i32* @I2CSSR, align 4
  %356 = call i32 @OUT32(%struct.cami2c* %354, i32 %355, i64 0)
  %357 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %357
}

declare dso_local i32 @IN32(%struct.cami2c*, i32) #1

declare dso_local i32 @OUT32(%struct.cami2c*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
