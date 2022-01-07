; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_evergreen_blit_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_evergreen_blit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@set_render_target = common dso_local global i32 0, align 4
@cp_set_surface_sync = common dso_local global i32 0, align 4
@set_shaders = common dso_local global i32 0, align 4
@set_vtx_resource = common dso_local global i32 0, align 4
@set_tex_resource = common dso_local global i32 0, align 4
@set_scissors = common dso_local global i32 0, align 4
@draw_auto = common dso_local global i32 0, align 4
@set_default_state = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@evergreen_default_size = common dso_local global i32 0, align 4
@cayman_default_size = common dso_local global i32 0, align 4
@evergreen_vs_size = common dso_local global i32 0, align 4
@cayman_vs_size = common dso_local global i32 0, align 4
@evergreen_ps_size = common dso_local global i32 0, align 4
@cayman_ps_size = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"evergreen failed to allocate shader\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"(%d) pin blit object failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"evergreen blit allocated bo %08x vs %08x ps %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to map blit object %d\0A\00", align 1
@evergreen_default_state = common dso_local global i32* null, align 8
@evergreen_vs = common dso_local global i32* null, align 8
@evergreen_ps = common dso_local global i32* null, align 8
@cayman_default_state = common dso_local global i32* null, align 8
@cayman_vs = common dso_local global i32* null, align 8
@cayman_ps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_blit_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @set_render_target, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @cp_set_surface_sync, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @set_shaders, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @set_vtx_resource, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @set_tex_resource, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @set_scissors, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @draw_auto, align 4
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @set_default_state, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 8, i32* %53, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 55
  store i32 %58, i32* %56, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 16
  store i32 %63, i32* %61, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 5
  store i32 %68, i32* %66, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 16
  store i32 %73, i32* %71, align 4
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 74, i32* %76, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHIP_CAYMAN, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %1
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 9
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %1
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i32 16384, i32* %91, align 4
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  store i32 0, i32* %94, align 4
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CHIP_CAYMAN, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %88
  %101 = load i32, i32* @evergreen_default_size, align 4
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  br label %110

105:                                              ; preds = %88
  %106 = load i32, i32* @cayman_default_size, align 4
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %119, %110
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, 15
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = call i32 @PACKET2(i32 0)
  %121 = call i32 @cpu_to_le32(i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %124
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %115

128:                                              ; preds = %115
  %129 = load i32, i32* %7, align 4
  %130 = mul nsw i32 %129, 4
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @ALIGN(i32 %131, i32 256)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  store i32 %133, i32* %136, align 4
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CHIP_CAYMAN, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %128
  %143 = load i32, i32* @evergreen_vs_size, align 4
  %144 = mul nsw i32 %143, 4
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %4, align 4
  br label %152

147:                                              ; preds = %128
  %148 = load i32, i32* @cayman_vs_size, align 4
  %149 = mul nsw i32 %148, 4
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @ALIGN(i32 %153, i32 256)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 6
  store i32 %155, i32* %158, align 4
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CHIP_CAYMAN, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %152
  %165 = load i32, i32* @evergreen_ps_size, align 4
  %166 = mul nsw i32 %165, 4
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %4, align 4
  br label %174

169:                                              ; preds = %152
  %170 = load i32, i32* @cayman_ps_size, align 4
  %171 = mul nsw i32 %170, 4
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @ALIGN(i32 %175, i32 256)
  store i32 %176, i32* %4, align 4
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %234, label %182

182:                                              ; preds = %174
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @PAGE_SIZE, align 4
  %186 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 7
  %190 = call i32 @radeon_bo_create(%struct.radeon_device* %183, i32 %184, i32 %185, i32 1, i32 %186, i32* null, i32* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %478

196:                                              ; preds = %182
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @radeon_bo_reserve(i32 %200, i32 0)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %2, align 4
  br label %478

209:                                              ; preds = %196
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 8
  %218 = call i32 @radeon_bo_pin(i32 %213, i32 %214, i32* %217)
  store i32 %218, i32* %6, align 4
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @radeon_bo_unreserve(i32 %222)
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %209
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @dev_err(i32 %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %478

233:                                              ; preds = %209
  br label %234

234:                                              ; preds = %233, %174
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %235, i32 %239, i32 %243)
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @radeon_bo_reserve(i32 %248, i32 0)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i64 @unlikely(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %234
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %2, align 4
  br label %478

257:                                              ; preds = %234
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @radeon_bo_kmap(i32 %261, i8** %8)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %257
  %266 = load i32, i32* %6, align 4
  %267 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %2, align 4
  br label %478

269:                                              ; preds = %257
  %270 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %271 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @CHIP_CAYMAN, align 8
  %274 = icmp slt i64 %272, %273
  br i1 %274, label %275, label %368

275:                                              ; preds = %269
  %276 = load i8*, i8** %8, align 8
  %277 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr i8, i8* %276, i64 %281
  %283 = load i32*, i32** @evergreen_default_state, align 8
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %287, 4
  %289 = call i32 @memcpy_toio(i8* %282, i32* %283, i32 %288)
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %311

292:                                              ; preds = %275
  %293 = load i8*, i8** %8, align 8
  %294 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %295 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr i8, i8* %293, i64 %298
  %300 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %303, 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr i8, i8* %299, i64 %305
  %307 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %308 = load i32, i32* %10, align 4
  %309 = mul nsw i32 %308, 4
  %310 = call i32 @memcpy_toio(i8* %306, i32* %307, i32 %309)
  br label %311

311:                                              ; preds = %292, %275
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %336, %311
  %313 = load i32, i32* %5, align 4
  %314 = load i32, i32* @evergreen_vs_size, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %339

316:                                              ; preds = %312
  %317 = load i32*, i32** @evergreen_vs, align 8
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @cpu_to_le32(i32 %321)
  %323 = load i8*, i8** %8, align 8
  %324 = ptrtoint i8* %323 to i64
  %325 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %326 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add i64 %324, %329
  %331 = load i32, i32* %5, align 4
  %332 = mul nsw i32 %331, 4
  %333 = sext i32 %332 to i64
  %334 = add i64 %330, %333
  %335 = inttoptr i64 %334 to i32*
  store i32 %322, i32* %335, align 4
  br label %336

336:                                              ; preds = %316
  %337 = load i32, i32* %5, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %5, align 4
  br label %312

339:                                              ; preds = %312
  store i32 0, i32* %5, align 4
  br label %340

340:                                              ; preds = %364, %339
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* @evergreen_ps_size, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %367

344:                                              ; preds = %340
  %345 = load i32*, i32** @evergreen_ps, align 8
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @cpu_to_le32(i32 %349)
  %351 = load i8*, i8** %8, align 8
  %352 = ptrtoint i8* %351 to i64
  %353 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %354 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = add i64 %352, %357
  %359 = load i32, i32* %5, align 4
  %360 = mul nsw i32 %359, 4
  %361 = sext i32 %360 to i64
  %362 = add i64 %358, %361
  %363 = inttoptr i64 %362 to i32*
  store i32 %350, i32* %363, align 4
  br label %364

364:                                              ; preds = %344
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  br label %340

367:                                              ; preds = %340
  br label %461

368:                                              ; preds = %269
  %369 = load i8*, i8** %8, align 8
  %370 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %371 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr i8, i8* %369, i64 %374
  %376 = load i32*, i32** @cayman_default_state, align 8
  %377 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %378 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = mul nsw i32 %380, 4
  %382 = call i32 @memcpy_toio(i8* %375, i32* %376, i32 %381)
  %383 = load i32, i32* %10, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %404

385:                                              ; preds = %368
  %386 = load i8*, i8** %8, align 8
  %387 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %388 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr i8, i8* %386, i64 %391
  %393 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %394 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  %397 = mul nsw i32 %396, 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr i8, i8* %392, i64 %398
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %401 = load i32, i32* %10, align 4
  %402 = mul nsw i32 %401, 4
  %403 = call i32 @memcpy_toio(i8* %399, i32* %400, i32 %402)
  br label %404

404:                                              ; preds = %385, %368
  store i32 0, i32* %5, align 4
  br label %405

405:                                              ; preds = %429, %404
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* @cayman_vs_size, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %432

409:                                              ; preds = %405
  %410 = load i32*, i32** @cayman_vs, align 8
  %411 = load i32, i32* %5, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @cpu_to_le32(i32 %414)
  %416 = load i8*, i8** %8, align 8
  %417 = ptrtoint i8* %416 to i64
  %418 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %419 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = add i64 %417, %422
  %424 = load i32, i32* %5, align 4
  %425 = mul nsw i32 %424, 4
  %426 = sext i32 %425 to i64
  %427 = add i64 %423, %426
  %428 = inttoptr i64 %427 to i32*
  store i32 %415, i32* %428, align 4
  br label %429

429:                                              ; preds = %409
  %430 = load i32, i32* %5, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %5, align 4
  br label %405

432:                                              ; preds = %405
  store i32 0, i32* %5, align 4
  br label %433

433:                                              ; preds = %457, %432
  %434 = load i32, i32* %5, align 4
  %435 = load i32, i32* @cayman_ps_size, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %460

437:                                              ; preds = %433
  %438 = load i32*, i32** @cayman_ps, align 8
  %439 = load i32, i32* %5, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @cpu_to_le32(i32 %442)
  %444 = load i8*, i8** %8, align 8
  %445 = ptrtoint i8* %444 to i64
  %446 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %447 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 6
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = add i64 %445, %450
  %452 = load i32, i32* %5, align 4
  %453 = mul nsw i32 %452, 4
  %454 = sext i32 %453 to i64
  %455 = add i64 %451, %454
  %456 = inttoptr i64 %455 to i32*
  store i32 %443, i32* %456, align 4
  br label %457

457:                                              ; preds = %437
  %458 = load i32, i32* %5, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %5, align 4
  br label %433

460:                                              ; preds = %433
  br label %461

461:                                              ; preds = %460, %367
  %462 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %463 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %462, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 7
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @radeon_bo_kunmap(i32 %465)
  %467 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %468 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @radeon_bo_unreserve(i32 %470)
  %472 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %473 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %474 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %472, i32 %476)
  store i32 0, i32* %2, align 4
  br label %478

478:                                              ; preds = %461, %265, %255, %226, %207, %193
  %479 = load i32, i32* %2, align 4
  ret i32 %479
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @PACKET2(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(i32, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @radeon_bo_kmap(i32, i8**) #1

declare dso_local i32 @memcpy_toio(i8*, i32*, i32) #1

declare dso_local i32 @radeon_bo_kunmap(i32) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
