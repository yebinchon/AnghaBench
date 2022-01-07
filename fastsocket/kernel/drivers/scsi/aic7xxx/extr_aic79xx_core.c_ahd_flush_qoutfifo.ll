; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_flush_qoutfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_flush_qoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i64 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@LQISTAT2 = common dso_local global i64 0, align 8
@LQIGSAVAIL = common dso_local global i32 0, align 4
@GSFIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Warning - GSFIFO SCB %d invalid\0A\00", align 1
@SCB_SGPTR = common dso_local global i64 0, align 8
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SCB_RESIDUAL_SGPTR = common dso_local global i64 0, align 8
@SCB_SCSI_STATUS = common dso_local global i64 0, align 8
@SG_STATUS_VALID = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@SCB_NEXT_COMPLETE = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@COMPLETE_DMA_SCB_HEAD = common dso_local global i32 0, align 4
@COMPLETE_DMA_SCB_TAIL = common dso_local global i32 0, align 4
@AHD_MODE_CCHAN = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i64 0, align 8
@CCARREN = common dso_local global i32 0, align 4
@CCSCBEN = common dso_local global i32 0, align 4
@CCSCBDIR = common dso_local global i32 0, align 4
@ARRDONE = common dso_local global i32 0, align 4
@CCSCBDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: Warning - DMA-up and complete SCB %d invalid\0A\00", align 1
@SCB_BASE = common dso_local global i64 0, align 8
@COMPLETE_ON_QFREEZE_HEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: Warning - Complete Qfrz SCB %d invalid\0A\00", align 1
@COMPLETE_SCB_HEAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: Warning - Complete SCB %d invalid\0A\00", align 1
@AHD_UPDATE_PEND_CMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_flush_qoutfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_flush_qoutfifo(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = call i32 @ahd_save_modes(%struct.ahd_softc* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = load i32, i32* @AHD_MODE_SCSI, align 4
  %19 = load i32, i32* @AHD_MODE_SCSI, align 4
  %20 = call i32 @ahd_set_modes(%struct.ahd_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %22 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %155, %39, %1
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i64, i64* @LQISTAT2, align 8
  %26 = call i32 @ahd_inb(%struct.ahd_softc* %24, i64 %25)
  %27 = load i32, i32* @LQIGSAVAIL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %156

30:                                               ; preds = %23
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = load i32, i32* @GSFIFO, align 4
  %33 = call i32 @ahd_inw(%struct.ahd_softc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %34, i32 %35)
  store %struct.scb* %36, %struct.scb** %3, align 8
  %37 = load %struct.scb*, %struct.scb** %3, align 8
  %38 = icmp eq %struct.scb* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = call i8* @ahd_name(%struct.ahd_softc* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  br label %23

44:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %61, %44
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %66, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = xor i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ahd_set_modes(%struct.ahd_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %57 = load %struct.scb*, %struct.scb** %3, align 8
  %58 = call i64 @ahd_scb_active_in_fifo(%struct.ahd_softc* %56, %struct.scb* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %66

61:                                               ; preds = %49
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %63 = load %struct.scb*, %struct.scb** %3, align 8
  %64 = call i32 @ahd_run_data_fifo(%struct.ahd_softc* %62, %struct.scb* %63)
  %65 = call i32 @ahd_delay(i32 200)
  br label %45

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %71 = load i32, i32* @AHD_MODE_SCSI, align 4
  %72 = load i32, i32* @AHD_MODE_SCSI, align 4
  %73 = call i32 @ahd_set_modes(%struct.ahd_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %74, i32 %75)
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %78 = load i64, i64* @SCB_SGPTR, align 8
  %79 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %77, i64 %78)
  %80 = load i32, i32* @SG_LIST_NULL, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %151

83:                                               ; preds = %69
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %85 = load i64, i64* @SCB_SGPTR, align 8
  %86 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %84, i64 %85)
  %87 = load i32, i32* @SG_FULL_RESID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %92 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %93 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %91, i64 %92)
  %94 = load i32, i32* @SG_LIST_NULL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %151

97:                                               ; preds = %90, %83
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %99 = load i64, i64* @SCB_SCSI_STATUS, align 8
  %100 = call i32 @ahd_outb(%struct.ahd_softc* %98, i64 %99, i32 0)
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %102 = load i64, i64* @SCB_SGPTR, align 8
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %104 = load i64, i64* @SCB_SGPTR, align 8
  %105 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %103, i64 %104)
  %106 = load i32, i32* @SG_STATUS_VALID, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @ahd_outb(%struct.ahd_softc* %101, i64 %102, i32 %107)
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %110 = load i32, i32* @SCB_TAG, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ahd_outw(%struct.ahd_softc* %109, i32 %110, i32 %111)
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %114 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %115 = load i32, i32* @SCB_LIST_NULL, align 4
  %116 = call i32 @ahd_outw(%struct.ahd_softc* %113, i32 %114, i32 %115)
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %118 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %119 = call i32 @ahd_inw(%struct.ahd_softc* %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @SCBID_IS_NULL(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %97
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %125 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @ahd_outw(%struct.ahd_softc* %124, i32 %125, i32 %126)
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %129 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ahd_outw(%struct.ahd_softc* %128, i32 %129, i32 %130)
  br label %150

132:                                              ; preds = %97
  %133 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %134 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %135 = call i32 @ahd_inw(%struct.ahd_softc* %133, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %136, i32 %137)
  %139 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %140 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @ahd_outw(%struct.ahd_softc* %139, i32 %140, i32 %141)
  %143 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %144 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @ahd_outw(%struct.ahd_softc* %143, i32 %144, i32 %145)
  %147 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %147, i32 %148)
  br label %150

150:                                              ; preds = %132, %123
  br label %155

151:                                              ; preds = %90, %69
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %153 = load %struct.scb*, %struct.scb** %3, align 8
  %154 = call i32 @ahd_complete_scb(%struct.ahd_softc* %152, %struct.scb* %153)
  br label %155

155:                                              ; preds = %151, %150
  br label %23

156:                                              ; preds = %23
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %157, i32 %158)
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %161 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %162 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %163 = call i32 @ahd_set_modes(%struct.ahd_softc* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %197, %156
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %166 = load i64, i64* @CCSCBCTL, align 8
  %167 = call i32 @ahd_inb(%struct.ahd_softc* %165, i64 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* @CCARREN, align 4
  %169 = load i32, i32* @CCSCBEN, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %199

173:                                              ; preds = %164
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @CCSCBDIR, align 4
  %176 = load i32, i32* @CCARREN, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = load i32, i32* @CCSCBDIR, align 4
  %180 = load i32, i32* @CCARREN, align 4
  %181 = or i32 %179, %180
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %173
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @ARRDONE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %199

189:                                              ; preds = %183
  br label %197

190:                                              ; preds = %173
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @CCSCBDONE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %199

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %189
  %198 = call i32 @ahd_delay(i32 200)
  br label %164

199:                                              ; preds = %195, %188, %164
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @CCSCBDIR, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @ARRDONE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204, %199
  %210 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %211 = load i64, i64* @CCSCBCTL, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @CCARREN, align 4
  %214 = load i32, i32* @CCSCBEN, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = and i32 %212, %216
  %218 = call i32 @ahd_outb(%struct.ahd_softc* %210, i64 %211, i32 %217)
  br label %219

219:                                              ; preds = %209, %204
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %221 = call i32 @ahd_run_qoutfifo(%struct.ahd_softc* %220)
  %222 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %223 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %222)
  store i32 %223, i32* %5, align 4
  %224 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %225 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %226 = call i32 @ahd_inw(%struct.ahd_softc* %224, i32 %225)
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %270, %244, %219
  %228 = load i32, i32* %7, align 4
  %229 = call i64 @SCBID_IS_NULL(i32 %228)
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  br i1 %231, label %232, label %275

232:                                              ; preds = %227
  %233 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %233, i32 %234)
  %236 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %237 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %238 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %236, i32 %237)
  store i32 %238, i32* %8, align 4
  %239 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %239, i32 %240)
  store %struct.scb* %241, %struct.scb** %3, align 8
  %242 = load %struct.scb*, %struct.scb** %3, align 8
  %243 = icmp eq %struct.scb* %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %232
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %246 = call i8* @ahd_name(%struct.ahd_softc* %245)
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %246, i32 %247)
  br label %227

249:                                              ; preds = %232
  %250 = load %struct.scb*, %struct.scb** %3, align 8
  %251 = getelementptr inbounds %struct.scb, %struct.scb* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i32*
  store i32* %253, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %254

254:                                              ; preds = %267, %249
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = icmp ult i64 %256, 4
  br i1 %257, label %258, label %270

258:                                              ; preds = %254
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %260 = load i64, i64* @SCB_BASE, align 8
  %261 = load i32, i32* %14, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %260, %262
  %264 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %259, i64 %263)
  %265 = load i32*, i32** %13, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %13, align 8
  store i32 %264, i32* %265, align 4
  br label %267

267:                                              ; preds = %258
  %268 = load i32, i32* %14, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %14, align 4
  br label %254

270:                                              ; preds = %254
  %271 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %272 = load %struct.scb*, %struct.scb** %3, align 8
  %273 = call i32 @ahd_complete_scb(%struct.ahd_softc* %271, %struct.scb* %272)
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %7, align 4
  br label %227

275:                                              ; preds = %227
  %276 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %277 = load i32, i32* @COMPLETE_DMA_SCB_HEAD, align 4
  %278 = load i32, i32* @SCB_LIST_NULL, align 4
  %279 = call i32 @ahd_outw(%struct.ahd_softc* %276, i32 %277, i32 %278)
  %280 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %281 = load i32, i32* @COMPLETE_DMA_SCB_TAIL, align 4
  %282 = load i32, i32* @SCB_LIST_NULL, align 4
  %283 = call i32 @ahd_outw(%struct.ahd_softc* %280, i32 %281, i32 %282)
  %284 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %285 = load i32, i32* @COMPLETE_ON_QFREEZE_HEAD, align 4
  %286 = call i32 @ahd_inw(%struct.ahd_softc* %284, i32 %285)
  store i32 %286, i32* %7, align 4
  br label %287

287:                                              ; preds = %309, %304, %275
  %288 = load i32, i32* %7, align 4
  %289 = call i64 @SCBID_IS_NULL(i32 %288)
  %290 = icmp ne i64 %289, 0
  %291 = xor i1 %290, true
  br i1 %291, label %292, label %314

292:                                              ; preds = %287
  %293 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %293, i32 %294)
  %296 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %297 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %298 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %296, i32 %297)
  store i32 %298, i32* %8, align 4
  %299 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %299, i32 %300)
  store %struct.scb* %301, %struct.scb** %3, align 8
  %302 = load %struct.scb*, %struct.scb** %3, align 8
  %303 = icmp eq %struct.scb* %302, null
  br i1 %303, label %304, label %309

304:                                              ; preds = %292
  %305 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %306 = call i8* @ahd_name(%struct.ahd_softc* %305)
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %306, i32 %307)
  br label %287

309:                                              ; preds = %292
  %310 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %311 = load %struct.scb*, %struct.scb** %3, align 8
  %312 = call i32 @ahd_complete_scb(%struct.ahd_softc* %310, %struct.scb* %311)
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %7, align 4
  br label %287

314:                                              ; preds = %287
  %315 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %316 = load i32, i32* @COMPLETE_ON_QFREEZE_HEAD, align 4
  %317 = load i32, i32* @SCB_LIST_NULL, align 4
  %318 = call i32 @ahd_outw(%struct.ahd_softc* %315, i32 %316, i32 %317)
  %319 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %320 = load i32, i32* @COMPLETE_SCB_HEAD, align 4
  %321 = call i32 @ahd_inw(%struct.ahd_softc* %319, i32 %320)
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %344, %339, %314
  %323 = load i32, i32* %7, align 4
  %324 = call i64 @SCBID_IS_NULL(i32 %323)
  %325 = icmp ne i64 %324, 0
  %326 = xor i1 %325, true
  br i1 %326, label %327, label %349

327:                                              ; preds = %322
  %328 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %329 = load i32, i32* %7, align 4
  %330 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %328, i32 %329)
  %331 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %332 = load i32, i32* @SCB_NEXT_COMPLETE, align 4
  %333 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %331, i32 %332)
  store i32 %333, i32* %8, align 4
  %334 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %335 = load i32, i32* %7, align 4
  %336 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %334, i32 %335)
  store %struct.scb* %336, %struct.scb** %3, align 8
  %337 = load %struct.scb*, %struct.scb** %3, align 8
  %338 = icmp eq %struct.scb* %337, null
  br i1 %338, label %339, label %344

339:                                              ; preds = %327
  %340 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %341 = call i8* @ahd_name(%struct.ahd_softc* %340)
  %342 = load i32, i32* %7, align 4
  %343 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %341, i32 %342)
  br label %322

344:                                              ; preds = %327
  %345 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %346 = load %struct.scb*, %struct.scb** %3, align 8
  %347 = call i32 @ahd_complete_scb(%struct.ahd_softc* %345, %struct.scb* %346)
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %7, align 4
  br label %322

349:                                              ; preds = %322
  %350 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %351 = load i32, i32* @COMPLETE_SCB_HEAD, align 4
  %352 = load i32, i32* @SCB_LIST_NULL, align 4
  %353 = call i32 @ahd_outw(%struct.ahd_softc* %350, i32 %351, i32 %352)
  %354 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %355 = load i32, i32* %5, align 4
  %356 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %354, i32 %355)
  %357 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %358 = load i32, i32* %4, align 4
  %359 = call i32 @ahd_restore_modes(%struct.ahd_softc* %357, i32 %358)
  %360 = load i32, i32* @AHD_UPDATE_PEND_CMDS, align 4
  %361 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %362 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_scb_active_in_fifo(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_run_data_fifo(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_delay(i32) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i32 @ahd_complete_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_run_qoutfifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
