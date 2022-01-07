; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_tulip_scsi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_tulip_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i32, i32, i32, i64, %struct.target_control*, %struct.scsi_ctrl_blk*, i8* }
%struct.target_control = type { i32, i32, i32 }
%struct.scsi_ctrl_blk = type { i32, i64, i32, i32, i32, i32, i64 }

@TUL_SStatus0 = common dso_local global i64 0, align 8
@TSS_INT_PENDING = common dso_local global i32 0, align 4
@TSS_PH_MASK = common dso_local global i32 0, align 4
@TUL_SStatus1 = common dso_local global i64 0, align 8
@TUL_SInt = common dso_local global i64 0, align 8
@TSS_SCSIRST_INT = common dso_local global i32 0, align 4
@TSS_RESEL_INT = common dso_local global i32 0, align 4
@TSS_SEL_TIMEOUT = common dso_local global i32 0, align 4
@TSS_DISC_INT = common dso_local global i32 0, align 4
@TSS_FUNC_COMP = common dso_local global i32 0, align 4
@TSS_BUS_SERV = common dso_local global i32 0, align 4
@TUL_SScsiId = common dso_local global i64 0, align 8
@ExecSCSI = common dso_local global i64 0, align 8
@TCF_DRV_EN_TAG = common dso_local global i32 0, align 4
@TUL_SPeriod = common dso_local global i64 0, align 8
@TCF_WDTR_DONE = common dso_local global i32 0, align 4
@TCF_NO_WDTR = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_NO_SYNC_NEGO = common dso_local global i32 0, align 4
@SCF_POLL = common dso_local global i32 0, align 4
@BusDevRst = common dso_local global i64 0, align 8
@AbortCmd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.initio_host*)* @tulip_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_scsi(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  %4 = alloca %struct.target_control*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TUL_SStatus0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @inb(i64 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @TSS_INT_PENDING, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %1
  %18 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %19 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TSS_PH_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %24 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %26 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TUL_SStatus1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i8* @inb(i64 %29)
  %31 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %32 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %34 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TUL_SInt, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i8* @inb(i64 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %41 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %43 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TSS_SCSIRST_INT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %17
  %49 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %50 = call i32 @int_initio_scsi_rst(%struct.initio_host* %49)
  br label %306

51:                                               ; preds = %17
  %52 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %53 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TSS_RESEL_INT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %60 = call i64 @int_initio_resel(%struct.initio_host* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %64 = call i32 @initio_next_state(%struct.initio_host* %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %306

66:                                               ; preds = %51
  %67 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %68 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TSS_SEL_TIMEOUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %75 = call i32 @int_initio_busfree(%struct.initio_host* %74)
  br label %306

76:                                               ; preds = %66
  %77 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %78 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TSS_DISC_INT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %85 = call i32 @int_initio_busfree(%struct.initio_host* %84)
  br label %306

86:                                               ; preds = %76
  %87 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %88 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TSS_FUNC_COMP, align 4
  %91 = load i32, i32* @TSS_BUS_SERV, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %97 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %96, i32 0, i32 6
  %98 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %97, align 8
  store %struct.scsi_ctrl_blk* %98, %struct.scsi_ctrl_blk** %3, align 8
  %99 = icmp ne %struct.scsi_ctrl_blk* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %102 = call i32 @initio_next_state(%struct.initio_host* %101)
  br label %103

103:                                              ; preds = %100, %95
  br label %306

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104, %1
  %106 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %107 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %106, i32 0, i32 6
  %108 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %107, align 8
  %109 = icmp ne %struct.scsi_ctrl_blk* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %306

111:                                              ; preds = %105
  %112 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %113 = call %struct.scsi_ctrl_blk* @initio_find_first_pend_scb(%struct.initio_host* %112)
  store %struct.scsi_ctrl_blk* %113, %struct.scsi_ctrl_blk** %3, align 8
  %114 = icmp eq %struct.scsi_ctrl_blk* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %306

116:                                              ; preds = %111
  %117 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %118 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 4
  %121 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %122 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 15
  %125 = or i32 %120, %124
  %126 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %127 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TUL_SScsiId, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 %125, i64 %130)
  %132 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %133 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ExecSCSI, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %233

137:                                              ; preds = %116
  %138 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %139 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %138, i32 0, i32 5
  %140 = load %struct.target_control*, %struct.target_control** %139, align 8
  %141 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %142 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.target_control, %struct.target_control* %140, i64 %144
  store %struct.target_control* %145, %struct.target_control** %4, align 8
  %146 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %147 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %137
  %151 = load i32, i32* @TCF_DRV_EN_TAG, align 4
  %152 = load %struct.target_control*, %struct.target_control** %4, align 8
  %153 = getelementptr inbounds %struct.target_control, %struct.target_control* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %163

156:                                              ; preds = %137
  %157 = load i32, i32* @TCF_DRV_EN_TAG, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.target_control*, %struct.target_control** %4, align 8
  %160 = getelementptr inbounds %struct.target_control, %struct.target_control* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %156, %150
  %164 = load %struct.target_control*, %struct.target_control** %4, align 8
  %165 = getelementptr inbounds %struct.target_control, %struct.target_control* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %168 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TUL_SPeriod, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @outb(i32 %166, i64 %171)
  %173 = load %struct.target_control*, %struct.target_control** %4, align 8
  %174 = getelementptr inbounds %struct.target_control, %struct.target_control* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @TCF_WDTR_DONE, align 4
  %177 = load i32, i32* @TCF_NO_WDTR, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %163
  %182 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %183 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %184 = call i32 @initio_select_atn_stop(%struct.initio_host* %182, %struct.scsi_ctrl_blk* %183)
  br label %213

185:                                              ; preds = %163
  %186 = load %struct.target_control*, %struct.target_control** %4, align 8
  %187 = getelementptr inbounds %struct.target_control, %struct.target_control* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TCF_SYNC_DONE, align 4
  %190 = load i32, i32* @TCF_NO_SYNC_NEGO, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %188, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %196 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %197 = call i32 @initio_select_atn_stop(%struct.initio_host* %195, %struct.scsi_ctrl_blk* %196)
  br label %212

198:                                              ; preds = %185
  %199 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %200 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %205 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %206 = call i32 @initio_select_atn3(%struct.initio_host* %204, %struct.scsi_ctrl_blk* %205)
  br label %211

207:                                              ; preds = %198
  %208 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %209 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %210 = call i32 @initio_select_atn(%struct.initio_host* %208, %struct.scsi_ctrl_blk* %209)
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %194
  br label %213

213:                                              ; preds = %212, %181
  %214 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %215 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SCF_POLL, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %230, %220
  %222 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %223 = call i32 @wait_tulip(%struct.initio_host* %222)
  %224 = icmp ne i32 %223, -1
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %227 = call i32 @initio_next_state(%struct.initio_host* %226)
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %231

230:                                              ; preds = %225
  br label %221

231:                                              ; preds = %229, %221
  br label %232

232:                                              ; preds = %231, %213
  br label %305

233:                                              ; preds = %116
  %234 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %235 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @BusDevRst, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %264

239:                                              ; preds = %233
  %240 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %241 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %242 = call i32 @initio_select_atn_stop(%struct.initio_host* %240, %struct.scsi_ctrl_blk* %241)
  %243 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %244 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %243, i32 0, i32 3
  store i32 8, i32* %244, align 4
  %245 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %246 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @SCF_POLL, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %261, %251
  %253 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %254 = call i32 @wait_tulip(%struct.initio_host* %253)
  %255 = icmp ne i32 %254, -1
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %258 = call i32 @initio_next_state(%struct.initio_host* %257)
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %262

261:                                              ; preds = %256
  br label %252

262:                                              ; preds = %260, %252
  br label %263

263:                                              ; preds = %262, %239
  br label %304

264:                                              ; preds = %233
  %265 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %266 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @AbortCmd, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %294

270:                                              ; preds = %264
  %271 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %272 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %273 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = call i64 @initio_abort_srb(%struct.initio_host* %271, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %270
  %278 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %279 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %280 = call i32 @initio_unlink_pend_scb(%struct.initio_host* %278, %struct.scsi_ctrl_blk* %279)
  %281 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %282 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %283 = call i32 @initio_release_scb(%struct.initio_host* %281, %struct.scsi_ctrl_blk* %282)
  br label %293

284:                                              ; preds = %270
  %285 = load i64, i64* @BusDevRst, align 8
  %286 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %287 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %286, i32 0, i32 1
  store i64 %285, i64* %287, align 8
  %288 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %289 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %290 = call i32 @initio_select_atn_stop(%struct.initio_host* %288, %struct.scsi_ctrl_blk* %289)
  %291 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %292 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %291, i32 0, i32 3
  store i32 8, i32* %292, align 4
  br label %293

293:                                              ; preds = %284, %277
  br label %303

294:                                              ; preds = %264
  %295 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %296 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %297 = call i32 @initio_unlink_pend_scb(%struct.initio_host* %295, %struct.scsi_ctrl_blk* %296)
  %298 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %299 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %298, i32 0, i32 4
  store i32 22, i32* %299, align 8
  %300 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %301 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %302 = call i32 @initio_append_done_scb(%struct.initio_host* %300, %struct.scsi_ctrl_blk* %301)
  br label %303

303:                                              ; preds = %294, %293
  br label %304

304:                                              ; preds = %303, %263
  br label %305

305:                                              ; preds = %304, %232
  br label %306

306:                                              ; preds = %305, %115, %110, %103, %83, %73, %65, %48
  ret void
}

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @int_initio_scsi_rst(%struct.initio_host*) #1

declare dso_local i64 @int_initio_resel(%struct.initio_host*) #1

declare dso_local i32 @initio_next_state(%struct.initio_host*) #1

declare dso_local i32 @int_initio_busfree(%struct.initio_host*) #1

declare dso_local %struct.scsi_ctrl_blk* @initio_find_first_pend_scb(%struct.initio_host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @initio_select_atn_stop(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_select_atn3(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_select_atn(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i64 @initio_abort_srb(%struct.initio_host*, i32) #1

declare dso_local i32 @initio_unlink_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_release_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
