; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_priv_tp_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_priv_tp_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"magic set %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\090x%08x: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"TRAP_TPDMA_2D - TP %d - Unknown fault at address %02x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"TRAP_TPDMA_2D - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"TRAP_TPDMA_RT - TP %d - Unknown fault at address %02x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"TRAP_TPDMA_RT - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"TRAP_TPDMA - TP %d - Global read fault at address %02x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"TRAP_TPDMA - TP %d - Global write fault at address %02x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"TRAP_TPDMA - TP %d - Unknown CUDA fault at address %02x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"TRAP_TPDMA - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s - TP%d: Unhandled ustatus 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%s - No TPs claiming errors?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_graph_priv*, i32, i32, i32, i32, i8*)* @nv50_priv_tp_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_priv_tp_trap(%struct.nv50_graph_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.nv50_graph_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nv50_graph_priv* %0, %struct.nv50_graph_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %27 = call i32 @nv_rd32(%struct.nv50_graph_priv* %26, i32 5440)
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %256, %6
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %259

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %256

38:                                               ; preds = %31
  %39 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %40 = call %struct.TYPE_2__* @nv_device(%struct.nv50_graph_priv* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 160
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 %46, 12
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %17, align 4
  br label %54

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %15, align 4
  %52 = shl i32 %51, 11
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @nv_rd32(%struct.nv50_graph_priv* %55, i32 %56)
  %58 = and i32 %57, 2147483647
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %256

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %239 [
    i32 6, label %66
    i32 7, label %92
    i32 8, label %104
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %87, %69
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 16
  %79 = icmp sle i32 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @nv_rd32(%struct.nv50_graph_priv* %83, i32 %84)
  %86 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %16, align 4
  br label %75

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %66
  br label %239

92:                                               ; preds = %62
  %93 = load i32, i32* %18, align 4
  %94 = and i32 %93, 67305472
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @nv50_priv_mp_trap(%struct.nv50_graph_priv* %97, i32 %98, i32 %99)
  %101 = load i32, i32* %18, align 4
  %102 = and i32 %101, -67305473
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %96, %92
  br label %239

104:                                              ; preds = %62
  %105 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 4
  %108 = call i32 @nv_rd32(%struct.nv50_graph_priv* %105, i32 %107)
  store i32 %108, i32* %19, align 4
  %109 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 8
  %112 = call i32 @nv_rd32(%struct.nv50_graph_priv* %109, i32 %111)
  store i32 %112, i32* %20, align 4
  %113 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 12
  %116 = call i32 @nv_rd32(%struct.nv50_graph_priv* %113, i32 %115)
  store i32 %116, i32* %21, align 4
  %117 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 16
  %120 = call i32 @nv_rd32(%struct.nv50_graph_priv* %117, i32 %119)
  store i32 %120, i32* %22, align 4
  %121 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 20
  %124 = call i32 @nv_rd32(%struct.nv50_graph_priv* %121, i32 %123)
  store i32 %124, i32* %23, align 4
  %125 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 24
  %128 = call i32 @nv_rd32(%struct.nv50_graph_priv* %125, i32 %127)
  store i32 %128, i32* %24, align 4
  %129 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 28
  %132 = call i32 @nv_rd32(%struct.nv50_graph_priv* %129, i32 %131)
  store i32 %132, i32* %25, align 4
  %133 = load i32, i32* %18, align 4
  %134 = and i32 %133, 16
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %104
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %20, align 4
  %144 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %140, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %25, align 4
  %152 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %145, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %139, %136
  %154 = load i32, i32* %18, align 4
  %155 = and i32 %154, -17
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %153, %104
  %157 = load i32, i32* %18, align 4
  %158 = and i32 %157, 64
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %20, align 4
  %168 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %164, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  %169 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %25, align 4
  %176 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %169, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %163, %160
  %178 = load i32, i32* %18, align 4
  %179 = and i32 %178, -65
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %177, %156
  %181 = load i32, i32* %18, align 4
  %182 = and i32 %181, 128
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %238

184:                                              ; preds = %180
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %235

187:                                              ; preds = %184
  %188 = load i32, i32* %22, align 4
  %189 = and i32 %188, -2147483648
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %22, align 4
  %197 = ashr i32 %196, 24
  %198 = and i32 %197, 31
  %199 = or i32 %195, %198
  %200 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %192, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %193, i32 %194, i32 %199)
  %201 = load i32, i32* %22, align 4
  %202 = and i32 %201, -520093697
  store i32 %202, i32* %22, align 4
  br label %226

203:                                              ; preds = %187
  %204 = load i32, i32* %22, align 4
  %205 = and i32 %204, 12
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* %22, align 4
  %213 = ashr i32 %212, 7
  %214 = and i32 %213, 31
  %215 = or i32 %211, %214
  %216 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %208, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %209, i32 %210, i32 %215)
  %217 = load i32, i32* %22, align 4
  %218 = and i32 %217, -3969
  store i32 %218, i32* %22, align 4
  br label %225

219:                                              ; preds = %203
  %220 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %20, align 4
  %224 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %220, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %219, %207
  br label %226

226:                                              ; preds = %225, %191
  %227 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %25, align 4
  %234 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %227, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %226, %184
  %236 = load i32, i32* %18, align 4
  %237 = and i32 %236, -129
  store i32 %237, i32* %18, align 4
  br label %238

238:                                              ; preds = %235, %180
  br label %239

239:                                              ; preds = %62, %238, %103, %91
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %239
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %247 = load i8*, i8** %12, align 8
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %18, align 4
  %250 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %246, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %245, %242
  br label %252

252:                                              ; preds = %251, %239
  %253 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @nv_wr32(%struct.nv50_graph_priv* %253, i32 %254, i32 -1073741824)
  br label %256

256:                                              ; preds = %252, %61, %37
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %28

259:                                              ; preds = %28
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @nv_warn(%struct.nv50_graph_priv* %266, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %265, %262, %259
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_graph_priv*, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv50_graph_priv*) #1

declare dso_local i32 @nv_error(%struct.nv50_graph_priv*, i8*, ...) #1

declare dso_local i32 @nv50_priv_mp_trap(%struct.nv50_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nv50_graph_priv*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
