; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv40_pm.c_nv40_pm_clocks_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv40_pm.c_nv40_pm_clocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)* }
%struct.nouveau_drm = type { i32 }
%struct.nv40_pm_state = type { i32, i32, i32, i32, i32, i32 }
%struct.bit_entry = type { i32* }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@nv40_pm_gr_idle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_pm_clocks_set(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_fifo*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nv40_pm_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bit_entry, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %5, align 8
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %20 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_device* %19)
  store %struct.nouveau_fifo* %20, %struct.nouveau_fifo** %6, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %21)
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.nv40_pm_state*
  store %struct.nv40_pm_state* %24, %struct.nv40_pm_state** %8, align 8
  store i64 0, i64* %11, align 8
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %78, %2
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %81

30:                                               ; preds = %27
  %31 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %32 = load i32, i32* %13, align 4
  %33 = mul nsw i32 %32, 8192
  %34 = add nsw i32 6293512, %33
  %35 = call i64 @nv_rd32(%struct.nouveau_device* %31, i32 %34)
  store i64 %35, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %36

36:                                               ; preds = %73, %30
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %39 = load i32, i32* %13, align 4
  %40 = mul nsw i32 %39, 8192
  %41 = add nsw i32 6293512, %40
  %42 = call i64 @nv_rd32(%struct.nouveau_device* %38, i32 %41)
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 8192
  %48 = add nsw i32 787396, %47
  %49 = call i32 @nv_wr08(%struct.nouveau_device* %45, i32 %48, i32 1)
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %51, 8192
  %53 = add nsw i32 787397, %52
  %54 = call i32 @nv_rd08(%struct.nouveau_device* %50, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %44
  %65 = load i32, i32* %13, align 4
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %11, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %64, %44
  br label %77

71:                                               ; preds = %36
  %72 = call i32 @udelay(i32 1)
  br label %73

73:                                               ; preds = %71
  %74 = load i64, i64* %16, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %16, align 8
  %76 = icmp slt i64 %74, 32
  br i1 %76, label %36, label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %83 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %82, i32 0, i32 1
  %84 = load i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)** %83, align 8
  %85 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %86 = call i32 %84(%struct.nouveau_fifo* %85, i64* %9)
  %87 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %88 = load i32, i32* @nv40_pm_gr_idle, align 4
  %89 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %90 = call i32 @nv_wait_cb(%struct.nouveau_device* %87, i32 %88, %struct.drm_device* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %281

93:                                               ; preds = %81
  store i32 0, i32* %14, align 4
  %94 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %95 = call i32 @nv_mask(%struct.nouveau_device* %94, i32 49216, i32 819, i32 0)
  %96 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %97 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %98 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nv_wr32(%struct.nouveau_device* %96, i32 16388, i32 %99)
  %101 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %102 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %103 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @nv_mask(%struct.nouveau_device* %101, i32 16384, i32 -1073282816, i32 %104)
  %106 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %107 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %108 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @nv_mask(%struct.nouveau_device* %106, i32 16392, i32 -1073217537, i32 %109)
  %111 = call i32 @mdelay(i32 5)
  %112 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %113 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %114 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @nv_mask(%struct.nouveau_device* %112, i32 49216, i32 819, i32 %115)
  %117 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %118 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %93
  br label %281

122:                                              ; preds = %93
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %160, %122
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %163

126:                                              ; preds = %123
  %127 = load i64, i64* %11, align 8
  %128 = load i32, i32* %13, align 4
  %129 = shl i32 1, %128
  %130 = sext i32 %129 to i64
  %131 = and i64 %127, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %160

134:                                              ; preds = %126
  %135 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %136 = load i32, i32* %13, align 4
  %137 = mul nsw i32 %136, 8192
  %138 = add nsw i32 6293512, %137
  %139 = call i32 @nv_wait(%struct.nouveau_device* %135, i32 %138, i32 65536, i32 0)
  %140 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %141, 8192
  %143 = add nsw i32 6293512, %142
  %144 = call i32 @nv_wait(%struct.nouveau_device* %140, i32 %143, i32 65536, i32 65536)
  %145 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %146 = load i32, i32* %13, align 4
  %147 = mul nsw i32 %146, 8192
  %148 = add nsw i32 787396, %147
  %149 = call i32 @nv_wr08(%struct.nouveau_device* %145, i32 %148, i32 1)
  %150 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 %151, 8192
  %153 = add nsw i32 787397, %152
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, 32
  %159 = call i32 @nv_wr08(%struct.nouveau_device* %150, i32 %153, i32 %158)
  br label %160

160:                                              ; preds = %134, %133
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %123

163:                                              ; preds = %123
  %164 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %165 = call i32 @nv_wr32(%struct.nouveau_device* %164, i32 1049300, i32 1)
  %166 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %167 = call i32 @nv_wr32(%struct.nouveau_device* %166, i32 1049296, i32 1)
  %168 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %169 = call i32 @nv_wr32(%struct.nouveau_device* %168, i32 1049296, i32 1)
  %170 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %171 = call i32 @nv_mask(%struct.nouveau_device* %170, i32 1049104, i32 -2147483648, i32 0)
  %172 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %173 = call i32 @nv_wr32(%struct.nouveau_device* %172, i32 1049308, i32 1)
  %174 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %175 = call i32 @nv_mask(%struct.nouveau_device* %174, i32 49216, i32 49152, i32 0)
  %176 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %177 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.TYPE_2__* @nv_device(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %214 [
    i32 64, label %182
    i32 69, label %182
    i32 65, label %182
    i32 66, label %182
    i32 71, label %182
    i32 67, label %203
    i32 73, label %203
    i32 75, label %203
  ]

182:                                              ; preds = %163, %163, %163, %163, %163
  %183 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %184 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %185 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @nv_mask(%struct.nouveau_device* %183, i32 16452, i32 -1065938688, i32 %186)
  %188 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %189 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %190 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @nv_mask(%struct.nouveau_device* %188, i32 16428, i32 -1065938688, i32 %191)
  %193 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %194 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %195 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @nv_wr32(%struct.nouveau_device* %193, i32 16456, i32 %196)
  %198 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %199 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %200 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @nv_wr32(%struct.nouveau_device* %198, i32 16432, i32 %201)
  br label %203

203:                                              ; preds = %163, %163, %163, %182
  %204 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %205 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %206 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @nv_mask(%struct.nouveau_device* %204, i32 16440, i32 -1065938688, i32 %207)
  %209 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %210 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %211 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @nv_wr32(%struct.nouveau_device* %209, i32 16444, i32 %212)
  br label %214

214:                                              ; preds = %163, %203
  %215 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %216 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %217 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @nv_mask(%struct.nouveau_device* %215, i32 16416, i32 -1065938688, i32 %218)
  %220 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %221 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %222 = getelementptr inbounds %struct.nv40_pm_state, %struct.nv40_pm_state* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @nv_wr32(%struct.nouveau_device* %220, i32 16420, i32 %223)
  br label %225

225:                                              ; preds = %214
  %226 = call i32 @udelay(i32 100)
  %227 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %228 = call i32 @nv_mask(%struct.nouveau_device* %227, i32 49216, i32 49152, i32 49152)
  %229 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %230 = call i32 @nv_wr32(%struct.nouveau_device* %229, i32 1049308, i32 0)
  %231 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %232 = call i32 @nv_mask(%struct.nouveau_device* %231, i32 1049104, i32 -2147483648, i32 -2147483648)
  %233 = call i32 @udelay(i32 100)
  %234 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %235 = call i32 @bit_table(%struct.drm_device* %234, i8 signext 77, %struct.bit_entry* %10)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %225
  %238 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %239 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ROM16(i32 %242)
  %244 = call i32 @nouveau_bios_run_init_table(%struct.drm_device* %238, i32 %243, i32* null, i32 0)
  br label %245

245:                                              ; preds = %237, %225
  store i32 0, i32* %13, align 4
  br label %246

246:                                              ; preds = %277, %245
  %247 = load i32, i32* %13, align 4
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %249, label %280

249:                                              ; preds = %246
  %250 = load i64, i64* %11, align 8
  %251 = load i32, i32* %13, align 4
  %252 = shl i32 1, %251
  %253 = sext i32 %252 to i64
  %254 = and i64 %250, %253
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %249
  br label %277

257:                                              ; preds = %249
  %258 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %259 = load i32, i32* %13, align 4
  %260 = mul nsw i32 %259, 8192
  %261 = add nsw i32 6293512, %260
  %262 = call i32 @nv_wait(%struct.nouveau_device* %258, i32 %261, i32 65536, i32 65536)
  %263 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %264 = load i32, i32* %13, align 4
  %265 = mul nsw i32 %264, 8192
  %266 = add nsw i32 787396, %265
  %267 = call i32 @nv_wr08(%struct.nouveau_device* %263, i32 %266, i32 1)
  %268 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %269 = load i32, i32* %13, align 4
  %270 = mul nsw i32 %269, 8192
  %271 = add nsw i32 787397, %270
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @nv_wr08(%struct.nouveau_device* %268, i32 %271, i32 %275)
  br label %277

277:                                              ; preds = %257, %256
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %246

280:                                              ; preds = %246
  br label %281

281:                                              ; preds = %280, %121, %92
  %282 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %283 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %282, i32 0, i32 0
  %284 = load i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)** %283, align 8
  %285 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %286 = call i32 %284(%struct.nouveau_fifo* %285, i64* %9)
  %287 = load %struct.nv40_pm_state*, %struct.nv40_pm_state** %8, align 8
  %288 = call i32 @kfree(%struct.nv40_pm_state* %287)
  %289 = load i32, i32* %14, align 4
  ret i32 %289
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_wr08(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_rd08(%struct.nouveau_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nv_wait_cb(%struct.nouveau_device*, i32, %struct.drm_device*) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nouveau_bios_run_init_table(%struct.drm_device*, i32, i32*, i32) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local i32 @kfree(%struct.nv40_pm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
