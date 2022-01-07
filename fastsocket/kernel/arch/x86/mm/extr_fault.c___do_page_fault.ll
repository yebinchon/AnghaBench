; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c___do_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c___do_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32, i64, i32 }
%struct.vm_area_struct = type { i64, i32 }

@PF_WRITE = common dso_local global i64 0, align 8
@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@PF_RSVD = common dso_local global i64 0, align 8
@PF_USER = common dso_local global i64 0, align 8
@PF_PROT = common dso_local global i64 0, align 8
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MAJ = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64)* @__do_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_page_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PF_WRITE, align 8
  %15 = and i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %18 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %19, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %28, %struct.task_struct** %8, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 2
  %31 = load %struct.mm_struct*, %struct.mm_struct** %30, align 8
  store %struct.mm_struct* %31, %struct.mm_struct** %9, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = call i64 @kmemcheck_active(%struct.pt_regs* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = call i32 @kmemcheck_hide(%struct.pt_regs* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  %41 = call i32 @prefetchw(i32* %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @kmmio_fault(%struct.pt_regs* %42, i64 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %337

48:                                               ; preds = %38
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @fault_in_kernel_space(i64 %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PF_RSVD, align 8
  %56 = load i64, i64* @PF_USER, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @PF_PROT, align 8
  %59 = or i64 %57, %58
  %60 = and i64 %54, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @vmalloc_fault(i64 %63)
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %337

67:                                               ; preds = %62
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @kmemcheck_fault(%struct.pt_regs* %68, i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %337

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @spurious_fault(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %337

81:                                               ; preds = %75
  %82 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %83 = call i32 @notify_page_fault(%struct.pt_regs* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %337

86:                                               ; preds = %81
  %87 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %87, i64 %88, i64 %89)
  br label %337

91:                                               ; preds = %48
  %92 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %93 = call i32 @notify_page_fault(%struct.pt_regs* %92)
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %337

97:                                               ; preds = %91
  %98 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %99 = call i64 @user_mode_vm(%struct.pt_regs* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = call i32 (...) @local_irq_enable()
  %103 = load i64, i64* @PF_USER, align 8
  %104 = load i64, i64* %6, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %6, align 8
  br label %116

106:                                              ; preds = %97
  %107 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @X86_EFLAGS_IF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 (...) @local_irq_enable()
  br label %115

115:                                              ; preds = %113, %106
  br label %116

116:                                              ; preds = %115, %101
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @PF_RSVD, align 8
  %119 = and i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @pgtable_bad(%struct.pt_regs* %124, i64 %125, i64 %126)
  br label %128

128:                                              ; preds = %123, %116
  %129 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS, align 4
  %130 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @perf_sw_event(i32 %129, i32 1, %struct.pt_regs* %130, i64 %131)
  %133 = call i64 (...) @in_atomic()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %137 = icmp ne %struct.mm_struct* %136, null
  %138 = xor i1 %137, true
  br label %139

139:                                              ; preds = %135, %128
  %140 = phi i1 [ true, %128 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %145, i64 %146, i64 %147)
  br label %337

149:                                              ; preds = %139
  %150 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %151 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %150, i32 0, i32 0
  %152 = call i32 @down_read_trylock(i32* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %149
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @PF_USER, align 8
  %161 = and i64 %159, %160
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %165 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @search_exception_tables(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %163
  %170 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %170, i64 %171, i64 %172)
  br label %337

174:                                              ; preds = %163, %158
  br label %175

175:                                              ; preds = %323, %174
  %176 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %177 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %176, i32 0, i32 0
  %178 = call i32 @down_read(i32* %177)
  br label %181

179:                                              ; preds = %149
  %180 = call i32 (...) @might_sleep()
  br label %181

181:                                              ; preds = %179, %175
  %182 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %183 = load i64, i64* %5, align 8
  %184 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %182, i64 %183)
  store %struct.vm_area_struct* %184, %struct.vm_area_struct** %7, align 8
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %186 = icmp ne %struct.vm_area_struct* %185, null
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* %5, align 8
  %195 = call i32 @bad_area(%struct.pt_regs* %192, i64 %193, i64 %194)
  br label %337

196:                                              ; preds = %181
  %197 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %198 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %5, align 8
  %201 = icmp ule i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i64 @likely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  br label %256

206:                                              ; preds = %196
  %207 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %208 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @VM_GROWSDOWN, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %206
  %218 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* %5, align 8
  %221 = call i32 @bad_area(%struct.pt_regs* %218, i64 %219, i64 %220)
  br label %337

222:                                              ; preds = %206
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* @PF_USER, align 8
  %225 = and i64 %223, %224
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %244

227:                                              ; preds = %222
  %228 = load i64, i64* %5, align 8
  %229 = add i64 %228, 65536
  %230 = add i64 %229, 256
  %231 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %232 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ult i64 %230, %233
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %227
  %239 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %240 = load i64, i64* %6, align 8
  %241 = load i64, i64* %5, align 8
  %242 = call i32 @bad_area(%struct.pt_regs* %239, i64 %240, i64 %241)
  br label %337

243:                                              ; preds = %227
  br label %244

244:                                              ; preds = %243, %222
  %245 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %246 = load i64, i64* %5, align 8
  %247 = call i32 @expand_stack(%struct.vm_area_struct* %245, i64 %246)
  %248 = call i64 @unlikely(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %252 = load i64, i64* %6, align 8
  %253 = load i64, i64* %5, align 8
  %254 = call i32 @bad_area(%struct.pt_regs* %251, i64 %252, i64 %253)
  br label %337

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255, %205
  %257 = load i64, i64* %6, align 8
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %260 = call i32 @access_error(i64 %257, i32 %258, %struct.vm_area_struct* %259)
  %261 = call i64 @unlikely(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %256
  %264 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %265 = load i64, i64* %6, align 8
  %266 = load i64, i64* %5, align 8
  %267 = call i32 @bad_area_access_error(%struct.pt_regs* %264, i64 %265, i64 %266)
  br label %337

268:                                              ; preds = %256
  %269 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %270 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %271 = load i64, i64* %5, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @handle_mm_fault(%struct.mm_struct* %269, %struct.vm_area_struct* %270, i64 %271, i32 %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @VM_FAULT_RETRY, align 4
  %276 = load i32, i32* @VM_FAULT_ERROR, align 4
  %277 = or i32 %275, %276
  %278 = and i32 %274, %277
  %279 = call i64 @unlikely(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %268
  %282 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %283 = load i64, i64* %6, align 8
  %284 = load i64, i64* %5, align 8
  %285 = load i32, i32* %10, align 4
  %286 = call i64 @mm_fault_error(%struct.pt_regs* %282, i64 %283, i64 %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  br label %337

289:                                              ; preds = %281
  br label %290

290:                                              ; preds = %289, %268
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %329

295:                                              ; preds = %290
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %295
  %301 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %302 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 4
  %305 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MAJ, align 4
  %306 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %307 = load i64, i64* %5, align 8
  %308 = call i32 @perf_sw_event(i32 %305, i32 1, %struct.pt_regs* %306, i64 %307)
  br label %318

309:                                              ; preds = %295
  %310 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %311 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 8
  %314 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MIN, align 4
  %315 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %316 = load i64, i64* %5, align 8
  %317 = call i32 @perf_sw_event(i32 %314, i32 1, %struct.pt_regs* %315, i64 %316)
  br label %318

318:                                              ; preds = %309, %300
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* @VM_FAULT_RETRY, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %12, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %12, align 4
  br label %175

328:                                              ; preds = %318
  br label %329

329:                                              ; preds = %328, %290
  %330 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %331 = load i64, i64* %5, align 8
  %332 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %333 = call i32 @check_v8086_mode(%struct.pt_regs* %330, i64 %331, %struct.task_struct* %332)
  %334 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %335 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %334, i32 0, i32 0
  %336 = call i32 @up_read(i32* %335)
  br label %337

337:                                              ; preds = %329, %288, %263, %250, %238, %217, %191, %169, %144, %96, %86, %85, %80, %73, %66, %47
  ret void
}

declare dso_local i64 @kmemcheck_active(%struct.pt_regs*) #1

declare dso_local i32 @kmemcheck_hide(%struct.pt_regs*) #1

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kmmio_fault(%struct.pt_regs*, i64) #1

declare dso_local i32 @fault_in_kernel_space(i64) #1

declare dso_local i64 @vmalloc_fault(i64) #1

declare dso_local i64 @kmemcheck_fault(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @spurious_fault(i64, i64) #1

declare dso_local i32 @notify_page_fault(%struct.pt_regs*) #1

declare dso_local i32 @bad_area_nosemaphore(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @user_mode_vm(%struct.pt_regs*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @pgtable_bad(%struct.pt_regs*, i64, i64) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @search_exception_tables(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @bad_area(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @access_error(i64, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @bad_area_access_error(%struct.pt_regs*, i64, i64) #1

declare dso_local i32 @handle_mm_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @mm_fault_error(%struct.pt_regs*, i64, i64, i32) #1

declare dso_local i32 @check_v8086_mode(%struct.pt_regs*, i64, %struct.task_struct*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
