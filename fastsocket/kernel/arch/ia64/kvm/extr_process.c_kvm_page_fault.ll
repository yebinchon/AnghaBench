; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i32 }
%union.ia64_isr = type { i64 }
%union.ia64_pta = type { i8* }
%struct.thash_data = type { i64, i32, i32, i32, i32, i32 }

@current_vcpu = common dso_local global %struct.kvm_vcpu* null, align 8
@cr_isr = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@D_TLB = common dso_local global i32 0, align 4
@IA64_PSR_CPL0_BIT = common dso_local global i32 0, align 4
@RR_RID_MASK = common dso_local global i32 0, align 4
@RR_PS_MASK = common dso_local global i32 0, align 4
@RSE_REF = common dso_local global i32 0, align 4
@DATA_REF = common dso_local global i32 0, align 4
@IA64_PSR_IC = common dso_local global i64 0, align 8
@_PAGE_P = common dso_local global i32 0, align 4
@_PAGE_MA_MASK = common dso_local global i32 0, align 4
@_PAGE_MA_ST = common dso_local global i32 0, align 4
@I_TLB = common dso_local global i32 0, align 4
@INST_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_page_fault(i32 %0, i32 %1, %struct.kvm_pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.ia64_isr, align 8
  %15 = alloca %union.ia64_pta, align 8
  %16 = alloca %struct.thash_data*, align 8
  %17 = alloca %struct.kvm_vcpu*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.kvm_pt_regs* %2, %struct.kvm_pt_regs** %6, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** @current_vcpu, align 8
  store %struct.kvm_vcpu* %18, %struct.kvm_vcpu** %17, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @VCPU(%struct.kvm_vcpu* %19, i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %23 = load i32, i32* @cr_isr, align 4
  %24 = call i32 @VMX(%struct.kvm_vcpu* %22, i32 %23)
  %25 = bitcast %union.ia64_isr* %14 to i32*
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %28 = call i64 @is_physical_mode(%struct.kvm_vcpu* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %3
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 1
  %33 = ashr i32 %32, 62
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 1
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = add nsw i32 %41, 1
  %43 = ashr i32 %40, %42
  %44 = call i64 @__gpfn_is_io(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 1
  %50 = ashr i32 %49, 1
  %51 = call i32 @emulate_io_inst(%struct.kvm_vcpu* %47, i32 %50, i32 4)
  br label %360

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @physical_tlb_miss(%struct.kvm_vcpu* %54, i32 %55, i32 %56)
  br label %360

58:                                               ; preds = %30, %3
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu* %59, i32 %60, i32 %61)
  store %struct.thash_data* %62, %struct.thash_data** %16, align 8
  %63 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %64 = icmp ne %struct.thash_data* %63, null
  br i1 %64, label %65, label %139

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @D_TLB, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %128

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %73 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = shl i64 1, %74
  %76 = sub i64 %75, 1
  %77 = and i64 %71, %76
  %78 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %79 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %82 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 12
  %85 = trunc i64 %84 to i32
  %86 = ashr i32 %80, %85
  %87 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %88 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = shl i32 %86, %90
  %92 = sext i32 %91 to i64
  %93 = add i64 %77, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = call i64 @__gpfn_is_io(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %69
  %101 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %102 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %105 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IA64_PSR_CPL0_BIT, align 4
  %108 = ashr i32 %106, %107
  %109 = and i32 %108, 3
  %110 = icmp sge i32 %103, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %100
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %115 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @emulate_io_inst(%struct.kvm_vcpu* %112, i32 %113, i32 %116)
  br label %126

118:                                              ; preds = %100
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %120 = bitcast %union.ia64_isr* %14 to i32*
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %119, i32 %121)
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @data_access_rights(%struct.kvm_vcpu* %123, i32 %124)
  br label %126

126:                                              ; preds = %118, %111
  br label %360

127:                                              ; preds = %69
  br label %128

128:                                              ; preds = %127, %65
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %130 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %131 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.thash_data*, %struct.thash_data** %16, align 8
  %134 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @thash_vhpt_insert(%struct.kvm_vcpu* %129, i32 %132, i32 %135, i32 %136, i32 %137)
  br label %360

139:                                              ; preds = %58
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @D_TLB, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %271

143:                                              ; preds = %139
  %144 = bitcast %union.ia64_isr* %14 to i64*
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %149 = call i32 @handle_lds(%struct.kvm_pt_regs* %148)
  br label %360

150:                                              ; preds = %143
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @RR_RID_MASK, align 4
  %156 = load i32, i32* @RR_PS_MASK, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  store i32 %158, i32* %13, align 4
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %160 = load i32, i32* %4, align 4
  %161 = bitcast %union.ia64_isr* %14 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = load i32, i32* @RSE_REF, align 4
  br label %168

166:                                              ; preds = %150
  %167 = load i32, i32* @DATA_REF, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = call i32 @vhpt_enabled(%struct.kvm_vcpu* %159, i32 %160, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @IA64_PSR_IC, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %179 = bitcast %union.ia64_isr* %14 to i32*
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %178, i32 %180)
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @alt_dtlb(%struct.kvm_vcpu* %182, i32 %183)
  br label %188

185:                                              ; preds = %172
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %187 = call i32 @nested_dtlb(%struct.kvm_vcpu* %186)
  br label %188

188:                                              ; preds = %185, %177
  br label %360

189:                                              ; preds = %168
  %190 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %191 = call i8* @vcpu_get_pta(%struct.kvm_vcpu* %190)
  %192 = bitcast %union.ia64_pta* %15 to i8**
  store i8* %191, i8** %192, align 8
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @vcpu_thash(%struct.kvm_vcpu* %193, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @guest_vhpt_lookup(i32 %196, i32* %11)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %253, label %199

199:                                              ; preds = %189
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @_PAGE_P, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %221, label %204

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @IA64_PSR_IC, align 8
  %207 = and i64 %205, %206
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %211 = bitcast %union.ia64_isr* %14 to i32*
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %210, i32 %212)
  %214 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @dtlb_fault(%struct.kvm_vcpu* %214, i32 %215)
  br label %220

217:                                              ; preds = %204
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %219 = call i32 @nested_dtlb(%struct.kvm_vcpu* %218)
  br label %220

220:                                              ; preds = %217, %209
  br label %252

221:                                              ; preds = %199
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @_PAGE_MA_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load i32, i32* @_PAGE_MA_ST, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %221
  %228 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @D_TLB, align 4
  %233 = call i32 @thash_purge_and_insert(%struct.kvm_vcpu* %228, i32 %229, i32 %230, i32 %231, i32 %232)
  br label %251

234:                                              ; preds = %221
  %235 = load i64, i64* %7, align 8
  %236 = load i64, i64* @IA64_PSR_IC, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %241 = bitcast %union.ia64_isr* %14 to i32*
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %240, i32 %242)
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @dtlb_fault(%struct.kvm_vcpu* %244, i32 %245)
  br label %250

247:                                              ; preds = %234
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %249 = call i32 @nested_dtlb(%struct.kvm_vcpu* %248)
  br label %250

250:                                              ; preds = %247, %239
  br label %251

251:                                              ; preds = %250, %227
  br label %252

252:                                              ; preds = %251, %220
  br label %270

253:                                              ; preds = %189
  %254 = load i64, i64* %7, align 8
  %255 = load i64, i64* @IA64_PSR_IC, align 8
  %256 = and i64 %254, %255
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %253
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %260 = bitcast %union.ia64_isr* %14 to i32*
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %259, i32 %261)
  %263 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %264 = load i32, i32* %4, align 4
  %265 = call i32 @dvhpt_fault(%struct.kvm_vcpu* %263, i32 %264)
  br label %269

266:                                              ; preds = %253
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %268 = call i32 @nested_dtlb(%struct.kvm_vcpu* %267)
  br label %269

269:                                              ; preds = %266, %258
  br label %270

270:                                              ; preds = %269, %252
  br label %359

271:                                              ; preds = %139
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @I_TLB, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %358

275:                                              ; preds = %271
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* @IA64_PSR_IC, align 8
  %278 = and i64 %276, %277
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = bitcast %union.ia64_isr* %14 to i32*
  store i32 1, i32* %281, align 8
  br label %282

282:                                              ; preds = %280, %275
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* @INST_REF, align 4
  %286 = call i32 @vhpt_enabled(%struct.kvm_vcpu* %283, i32 %284, i32 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %296, label %288

288:                                              ; preds = %282
  %289 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %290 = bitcast %union.ia64_isr* %14 to i32*
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %289, i32 %291)
  %293 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %294 = load i32, i32* %4, align 4
  %295 = call i32 @alt_itlb(%struct.kvm_vcpu* %293, i32 %294)
  br label %360

296:                                              ; preds = %282
  %297 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %298 = call i8* @vcpu_get_pta(%struct.kvm_vcpu* %297)
  %299 = bitcast %union.ia64_pta* %15 to i8**
  store i8* %298, i8** %299, align 8
  %300 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %301 = load i32, i32* %4, align 4
  %302 = call i32 @vcpu_thash(%struct.kvm_vcpu* %300, i32 %301)
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @guest_vhpt_lookup(i32 %303, i32* %11)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %349, label %306

306:                                              ; preds = %296
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* @_PAGE_P, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %340

311:                                              ; preds = %306
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @_PAGE_MA_MASK, align 4
  %314 = and i32 %312, %313
  %315 = load i32, i32* @_PAGE_MA_ST, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %311
  %318 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %319 = bitcast %union.ia64_isr* %14 to i32*
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %318, i32 %320)
  %322 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %323 = load i32, i32* %4, align 4
  %324 = call i32 @itlb_fault(%struct.kvm_vcpu* %322, i32 %323)
  br label %360

325:                                              ; preds = %311
  %326 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %327 = load i32, i32* %4, align 4
  %328 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %326, i32 %327)
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* @RR_RID_MASK, align 4
  %331 = load i32, i32* @RR_PS_MASK, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %329, %332
  store i32 %333, i32* %13, align 4
  %334 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %335 = load i32, i32* %11, align 4
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %4, align 4
  %338 = load i32, i32* @I_TLB, align 4
  %339 = call i32 @thash_purge_and_insert(%struct.kvm_vcpu* %334, i32 %335, i32 %336, i32 %337, i32 %338)
  br label %348

340:                                              ; preds = %306
  %341 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %342 = bitcast %union.ia64_isr* %14 to i32*
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %341, i32 %343)
  %345 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %346 = load i32, i32* %4, align 4
  %347 = call i32 @inst_page_not_present(%struct.kvm_vcpu* %345, i32 %346)
  br label %348

348:                                              ; preds = %340, %325
  br label %357

349:                                              ; preds = %296
  %350 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %351 = bitcast %union.ia64_isr* %14 to i32*
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @vcpu_set_isr(%struct.kvm_vcpu* %350, i32 %352)
  %354 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  %355 = load i32, i32* %4, align 4
  %356 = call i32 @ivhpt_fault(%struct.kvm_vcpu* %354, i32 %355)
  br label %357

357:                                              ; preds = %349, %348
  br label %358

358:                                              ; preds = %357, %271
  br label %359

359:                                              ; preds = %358, %270
  br label %360

360:                                              ; preds = %46, %53, %126, %147, %188, %288, %317, %359, %128
  ret void
}

declare dso_local i64 @VCPU(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @VMX(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_physical_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @__gpfn_is_io(i32) #1

declare dso_local i32 @emulate_io_inst(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @physical_tlb_miss(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vcpu_set_isr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @data_access_rights(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @thash_vhpt_insert(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @handle_lds(%struct.kvm_pt_regs*) #1

declare dso_local i32 @vcpu_get_rr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vhpt_enabled(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @alt_dtlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_dtlb(%struct.kvm_vcpu*) #1

declare dso_local i8* @vcpu_get_pta(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_thash(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @guest_vhpt_lookup(i32, i32*) #1

declare dso_local i32 @dtlb_fault(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @thash_purge_and_insert(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @dvhpt_fault(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @alt_itlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @itlb_fault(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @inst_page_not_present(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @ivhpt_fault(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
