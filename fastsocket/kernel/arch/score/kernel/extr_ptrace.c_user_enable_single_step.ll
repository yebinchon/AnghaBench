; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_ptrace.c_user_enable_single_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_ptrace.c_user_enable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i16, i32, i32, i16 }
%struct.pt_regs = type { i32, i32* }

@J16M = common dso_local global i64 0, align 8
@J16 = common dso_local global i64 0, align 8
@B16M = common dso_local global i64 0, align 8
@B16 = common dso_local global i64 0, align 8
@BR16M = common dso_local global i64 0, align 8
@BR16 = common dso_local global i64 0, align 8
@J32M = common dso_local global i64 0, align 8
@J32 = common dso_local global i64 0, align 8
@B32M = common dso_local global i64 0, align 8
@B32 = common dso_local global i64 0, align 8
@BR32M = common dso_local global i64 0, align 8
@BR32 = common dso_local global i64 0, align 8
@SINGLESTEP16_INSN = common dso_local global i32 0, align 4
@SINGLESTEP32_INSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_enable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %11)
  store %struct.pt_regs* %12, %struct.pt_regs** %10, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %3, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @read_tsk_long(%struct.task_struct* %22, i32 %23, i64* %5)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @is_16bitinsn(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @J16M, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @J16, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, 4094
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, -4096
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %28
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @B16M, align 8
  %45 = and i64 %43, %44
  %46 = load i64, i64* @B16, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 2, i32* %51, align 4
  %52 = load i64, i64* %5, align 8
  %53 = and i64 %52, 255
  %54 = shl i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 23
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 23
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 2
  store i32 %64, i32* %3, align 4
  br label %92

65:                                               ; preds = %42
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @BR16M, align 8
  %68 = and i64 %66, %67
  %69 = load i64, i64* @BR16, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %65
  %72 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 2, i32* %74, align 4
  %75 = load i64, i64* %5, align 8
  %76 = lshr i64 %75, 4
  %77 = and i64 %76, 15
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %3, align 4
  %87 = add i32 %86, 2
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %65
  %89 = load i32, i32* %3, align 4
  %90 = add i32 %89, 2
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %71
  br label %92

92:                                               ; preds = %91, %48
  br label %93

93:                                               ; preds = %92, %34
  br label %175

94:                                               ; preds = %1
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @J32M, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* @J32, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = load i64, i64* %5, align 8
  %102 = and i64 %101, 67108862
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 32767
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 1023
  %109 = shl i32 %108, 15
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %3, align 4
  %113 = and i32 %112, -4194304
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %3, align 4
  br label %174

116:                                              ; preds = %94
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @B32M, align 8
  %119 = and i64 %117, %118
  %120 = load i64, i64* @B32, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %116
  %123 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %124 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 2, i32* %125, align 4
  %126 = load i64, i64* %5, align 8
  %127 = and i64 %126, 67108862
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, 1023
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 1023
  %134 = shl i32 %133, 10
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = shl i32 %137, 12
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = ashr i32 %139, 12
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %141, %142
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %3, align 4
  %145 = add i32 %144, 4
  store i32 %145, i32* %3, align 4
  br label %173

146:                                              ; preds = %116
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* @BR32M, align 8
  %149 = and i64 %147, %148
  %150 = load i64, i64* @BR32, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %146
  %153 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %154 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i32 2, i32* %155, align 4
  %156 = load i64, i64* %5, align 8
  %157 = lshr i64 %156, 16
  %158 = and i64 %157, 31
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %8, align 4
  %160 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %161 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %3, align 4
  %168 = add i32 %167, 4
  store i32 %168, i32* %3, align 4
  br label %172

169:                                              ; preds = %146
  %170 = load i32, i32* %3, align 4
  %171 = add i32 %170, 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %152
  br label %173

173:                                              ; preds = %172, %122
  br label %174

174:                                              ; preds = %173, %100
  br label %175

175:                                              ; preds = %174, %93
  %176 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %177 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %228

181:                                              ; preds = %175
  %182 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @read_tsk_long(%struct.task_struct* %182, i32 %183, i64* %5)
  %185 = load i64, i64* %5, align 8
  %186 = call i64 @is_16bitinsn(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @SINGLESTEP16_INSN, align 4
  %192 = call i32 @write_tsk_short(%struct.task_struct* %189, i32 %190, i32 %191)
  store i32 0, i32* %7, align 4
  br label %198

193:                                              ; preds = %181
  %194 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @SINGLESTEP32_INSN, align 4
  %197 = call i32 @write_tsk_long(%struct.task_struct* %194, i32 %195, i32 %196)
  store i32 1, i32* %7, align 4
  br label %198

198:                                              ; preds = %193, %188
  %199 = load i32, i32* %7, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %203 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  store i32 0, i32* %204, align 4
  %205 = load i32, i32* %3, align 4
  %206 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %207 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  store i32 %205, i32* %208, align 4
  %209 = load i64, i64* %5, align 8
  %210 = trunc i64 %209 to i16
  %211 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %212 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 4
  store i16 %210, i16* %213, align 4
  br label %227

214:                                              ; preds = %198
  %215 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %216 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  store i32 1, i32* %217, align 4
  %218 = load i32, i32* %3, align 4
  %219 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %220 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  store i32 %218, i32* %221, align 4
  %222 = load i64, i64* %5, align 8
  %223 = trunc i64 %222 to i16
  %224 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %225 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 4
  store i16 %223, i16* %226, align 4
  br label %227

227:                                              ; preds = %214, %201
  br label %321

228:                                              ; preds = %175
  %229 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %230 = load i32, i32* %3, align 4
  %231 = call i32 @read_tsk_long(%struct.task_struct* %229, i32 %230, i64* %5)
  %232 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @read_tsk_long(%struct.task_struct* %232, i32 %233, i64* %6)
  %235 = load i64, i64* %5, align 8
  %236 = call i64 @is_16bitinsn(i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %228
  %239 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %240 = load i32, i32* %3, align 4
  %241 = load i32, i32* @SINGLESTEP16_INSN, align 4
  %242 = call i32 @write_tsk_short(%struct.task_struct* %239, i32 %240, i32 %241)
  store i32 0, i32* %7, align 4
  br label %248

243:                                              ; preds = %228
  %244 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %245 = load i32, i32* %3, align 4
  %246 = load i32, i32* @SINGLESTEP32_INSN, align 4
  %247 = call i32 @write_tsk_long(%struct.task_struct* %244, i32 %245, i32 %246)
  store i32 1, i32* %7, align 4
  br label %248

248:                                              ; preds = %243, %238
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %248
  %252 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %253 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 2
  store i32 0, i32* %254, align 4
  %255 = load i32, i32* %3, align 4
  %256 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %257 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 3
  store i32 %255, i32* %258, align 4
  %259 = load i64, i64* %5, align 8
  %260 = trunc i64 %259 to i16
  %261 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %262 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 4
  store i16 %260, i16* %263, align 4
  br label %277

264:                                              ; preds = %248
  %265 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %266 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 2
  store i32 1, i32* %267, align 4
  %268 = load i32, i32* %3, align 4
  %269 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %270 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 3
  store i32 %268, i32* %271, align 4
  %272 = load i64, i64* %5, align 8
  %273 = trunc i64 %272 to i16
  %274 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %275 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 4
  store i16 %273, i16* %276, align 4
  br label %277

277:                                              ; preds = %264, %251
  %278 = load i64, i64* %6, align 8
  %279 = call i64 @is_16bitinsn(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @SINGLESTEP16_INSN, align 4
  %285 = call i32 @write_tsk_short(%struct.task_struct* %282, i32 %283, i32 %284)
  store i32 0, i32* %7, align 4
  br label %291

286:                                              ; preds = %277
  %287 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @SINGLESTEP32_INSN, align 4
  %290 = call i32 @write_tsk_long(%struct.task_struct* %287, i32 %288, i32 %289)
  store i32 1, i32* %7, align 4
  br label %291

291:                                              ; preds = %286, %281
  %292 = load i32, i32* %7, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %291
  %295 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %296 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 5
  store i32 0, i32* %297, align 4
  %298 = load i32, i32* %4, align 4
  %299 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %300 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 6
  store i32 %298, i32* %301, align 4
  %302 = load i64, i64* %6, align 8
  %303 = trunc i64 %302 to i16
  %304 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %305 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 7
  store i16 %303, i16* %306, align 4
  br label %320

307:                                              ; preds = %291
  %308 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %309 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 5
  store i32 1, i32* %310, align 4
  %311 = load i32, i32* %4, align 4
  %312 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %313 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 6
  store i32 %311, i32* %314, align 4
  %315 = load i64, i64* %6, align 8
  %316 = trunc i64 %315 to i16
  %317 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %318 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 7
  store i16 %316, i16* %319, align 4
  br label %320

320:                                              ; preds = %307, %294
  br label %321

321:                                              ; preds = %320, %227
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @read_tsk_long(%struct.task_struct*, i32, i64*) #1

declare dso_local i64 @is_16bitinsn(i64) #1

declare dso_local i32 @write_tsk_short(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @write_tsk_long(%struct.task_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
