; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nv50_fb_priv = type { i32 }
%struct.nouveau_enum = type { i32, i32, i64, i64 }
%struct.nouveau_object = type { i32 }

@vm_engine = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"trapped %s at 0x%02x%04x%04x on channel 0x%08x [%s] \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02x/\00", align 1
@vm_client = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" reason: \00", align 1
@vm_fault = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv50_fb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_fb_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nv50_fb_priv*, align 8
  %6 = alloca %struct.nouveau_enum*, align 8
  %7 = alloca %struct.nouveau_enum*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nouveau_enum*, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %18 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %19 = call %struct.nouveau_device* @nv_device(%struct.nouveau_subdev* %18)
  store %struct.nouveau_device* %19, %struct.nouveau_device** %3, align 8
  %20 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %21 = bitcast %struct.nouveau_subdev* %20 to i8*
  %22 = bitcast i8* %21 to %struct.nv50_fb_priv*
  store %struct.nv50_fb_priv* %22, %struct.nv50_fb_priv** %5, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %8, align 8
  %23 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %24 = call i32 @nv_rd32(%struct.nv50_fb_priv* %23, i32 1051792)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %268

29:                                               ; preds = %1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 16777215
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %47, %29
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %16, align 4
  %39 = shl i32 %38, 24
  %40 = or i32 %37, %39
  %41 = call i32 @nv_wr32(%struct.nv50_fb_priv* %36, i32 1051792, i32 %40)
  %42 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %43 = call i32 @nv_rd32(%struct.nv50_fb_priv* %42, i32 1051796)
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, -2147483648
  %54 = call i32 @nv_wr32(%struct.nv50_fb_priv* %51, i32 1051792, i32 %53)
  %55 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 163
  br i1 %58, label %69, label %59

59:                                               ; preds = %50
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %61 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 170
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 172
  br i1 %68, label %69, label %86

69:                                               ; preds = %64, %59, %50
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = and i32 %71, 15
  %73 = ashr i32 %72, 0
  store i32 %73, i32* %12, align 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = and i32 %75, 240
  %77 = ashr i32 %76, 4
  store i32 %77, i32* %13, align 4
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = and i32 %79, 3840
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %14, align 4
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = and i32 %83, 61440
  %85 = ashr i32 %84, 12
  store i32 %85, i32* %15, align 4
  br label %103

86:                                               ; preds = %64
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = and i32 %88, 255
  %90 = ashr i32 %89, 0
  store i32 %90, i32* %12, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = and i32 %92, 65280
  %94 = ashr i32 %93, 8
  store i32 %94, i32* %13, align 4
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = and i32 %96, 16711680
  %98 = ashr i32 %97, 16
  store i32 %98, i32* %14, align 4
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = and i32 %100, -16777216
  %102 = lshr i32 %101, 24
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %86, %69
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 16
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %106, %108
  store i32 %109, i32* %11, align 4
  %110 = load i64, i64* @vm_engine, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call %struct.nouveau_enum* @nouveau_enum_find(i64 %110, i32 %111)
  store %struct.nouveau_enum* %112, %struct.nouveau_enum** %6, align 8
  %113 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %114 = icmp ne %struct.nouveau_enum* %113, null
  br i1 %114, label %115, label %165

115:                                              ; preds = %103
  %116 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %117 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %115
  %121 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  store %struct.nouveau_enum* %121, %struct.nouveau_enum** %17, align 8
  br label %122

122:                                              ; preds = %156, %120
  %123 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %124 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %129 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %135 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br label %138

138:                                              ; preds = %133, %127, %122
  %139 = phi i1 [ false, %127 ], [ false, %122 ], [ %137, %133 ]
  br i1 %139, label %140, label %159

140:                                              ; preds = %138
  %141 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %142 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %143 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_subdev* %141, i64 %144)
  store %struct.nouveau_engine* %145, %struct.nouveau_engine** %4, align 8
  %146 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %147 = icmp ne %struct.nouveau_engine* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %149, i32 %150)
  store %struct.nouveau_object* %151, %struct.nouveau_object** %8, align 8
  %152 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %153 = icmp ne %struct.nouveau_object* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %159

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %140
  %157 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %158 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %157, i32 1
  store %struct.nouveau_enum* %158, %struct.nouveau_enum** %6, align 8
  br label %122

159:                                              ; preds = %154, %138
  %160 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %161 = icmp ne %struct.nouveau_object* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = load %struct.nouveau_enum*, %struct.nouveau_enum** %17, align 8
  store %struct.nouveau_enum* %163, %struct.nouveau_enum** %6, align 8
  br label %164

164:                                              ; preds = %162, %159
  br label %165

165:                                              ; preds = %164, %115, %103
  %166 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %167 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 256
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %173 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 255
  %176 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %177 = load i32, i32* %176, align 16
  %178 = and i32 %177, 65535
  %179 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 65535
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %184 = call i32 @nouveau_client_name(%struct.nouveau_object* %183)
  %185 = call i32 @nv_error(%struct.nv50_fb_priv* %166, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %172, i32 %175, i32 %178, i32 %181, i32 %182, i32 %184)
  %186 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %187 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %186)
  %188 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %189 = icmp ne %struct.nouveau_enum* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %165
  %191 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %192 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %198

195:                                              ; preds = %165
  %196 = load i32, i32* %12, align 4
  %197 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i64, i64* @vm_client, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call %struct.nouveau_enum* @nouveau_enum_find(i64 %199, i32 %200)
  store %struct.nouveau_enum* %201, %struct.nouveau_enum** %7, align 8
  %202 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %203 = icmp ne %struct.nouveau_enum* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %206 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  br label %212

209:                                              ; preds = %198
  %210 = load i32, i32* %14, align 4
  %211 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %214 = icmp ne %struct.nouveau_enum* %213, null
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %217 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %222 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %15, align 4
  %225 = call %struct.nouveau_enum* @nouveau_enum_find(i64 %223, i32 %224)
  store %struct.nouveau_enum* %225, %struct.nouveau_enum** %7, align 8
  br label %242

226:                                              ; preds = %215, %212
  %227 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %228 = icmp ne %struct.nouveau_enum* %227, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %231 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %236 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %15, align 4
  %239 = call %struct.nouveau_enum* @nouveau_enum_find(i64 %237, i32 %238)
  store %struct.nouveau_enum* %239, %struct.nouveau_enum** %7, align 8
  br label %241

240:                                              ; preds = %229, %226
  store %struct.nouveau_enum* null, %struct.nouveau_enum** %7, align 8
  br label %241

241:                                              ; preds = %240, %234
  br label %242

242:                                              ; preds = %241, %220
  %243 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %244 = icmp ne %struct.nouveau_enum* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.nouveau_enum*, %struct.nouveau_enum** %7, align 8
  %247 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %248)
  br label %253

250:                                              ; preds = %242
  %251 = load i32, i32* %15, align 4
  %252 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %250, %245
  %254 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %255 = load i64, i64* @vm_fault, align 8
  %256 = load i32, i32* %13, align 4
  %257 = call %struct.nouveau_enum* @nouveau_enum_find(i64 %255, i32 %256)
  store %struct.nouveau_enum* %257, %struct.nouveau_enum** %6, align 8
  %258 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %259 = icmp ne %struct.nouveau_enum* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.nouveau_enum*, %struct.nouveau_enum** %6, align 8
  %262 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %263)
  br label %268

265:                                              ; preds = %253
  %266 = load i32, i32* %13, align 4
  %267 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %28, %265, %260
  ret void
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_fb_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_fb_priv*, i32, i32) #1

declare dso_local %struct.nouveau_enum* @nouveau_enum_find(i64, i32) #1

declare dso_local %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_subdev*, i64) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_fb_priv*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
