; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_tv_dac_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_tv_dac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_tv_dac = type { i32, i32, i32, i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@COMBIOS_TV_INFO_TABLE = common dso_local global i32 0, align 4
@COMBIOS_CRT_INFO_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No TV DAC info found in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_encoder_tv_dac* @radeon_combios_get_tv_dac_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %12 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %5, align 8
  store %struct.radeon_encoder_tv_dac* null, %struct.radeon_encoder_tv_dac** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.radeon_encoder_tv_dac* @kzalloc(i32 16, i32 %19)
  store %struct.radeon_encoder_tv_dac* %20, %struct.radeon_encoder_tv_dac** %10, align 8
  %21 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %22 = icmp ne %struct.radeon_encoder_tv_dac* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store %struct.radeon_encoder_tv_dac* null, %struct.radeon_encoder_tv_dac** %2, align 8
  br label %245

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load i32, i32* @COMBIOS_TV_INFO_TABLE, align 4
  %27 = call i64 @combios_get_table_offset(%struct.drm_device* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %152

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 3
  %33 = call i32 @RBIOS8(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %88

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 12
  %39 = call i32 @RBIOS8(i64 %38)
  %40 = and i32 %39, 15
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 13
  %43 = call i32 @RBIOS8(i64 %42)
  %44 = and i32 %43, 15
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 20
  %49 = or i32 %46, %48
  %50 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 14
  %54 = call i32 @RBIOS8(i64 %53)
  %55 = and i32 %54, 15
  store i32 %55, i32* %8, align 4
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 15
  %58 = call i32 @RBIOS8(i64 %57)
  %59 = and i32 %58, 15
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 20
  %64 = or i32 %61, %63
  %65 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %66 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 16
  %69 = call i32 @RBIOS8(i64 %68)
  %70 = and i32 %69, 15
  store i32 %70, i32* %8, align 4
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, 17
  %73 = call i32 @RBIOS8(i64 %72)
  %74 = and i32 %73, 15
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 20
  %79 = or i32 %76, %78
  %80 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %81 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %83 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %36
  br label %147

88:                                               ; preds = %30
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %146

91:                                               ; preds = %88
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 12
  %94 = call i32 @RBIOS8(i64 %93)
  %95 = and i32 %94, 15
  store i32 %95, i32* %8, align 4
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, 12
  %98 = call i32 @RBIOS8(i64 %97)
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 15
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 20
  %105 = or i32 %102, %104
  %106 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %107 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i64, i64* %6, align 8
  %109 = add nsw i64 %108, 13
  %110 = call i32 @RBIOS8(i64 %109)
  %111 = and i32 %110, 15
  store i32 %111, i32* %8, align 4
  %112 = load i64, i64* %6, align 8
  %113 = add nsw i64 %112, 13
  %114 = call i32 @RBIOS8(i64 %113)
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 15
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 %117, 16
  %119 = load i32, i32* %9, align 4
  %120 = shl i32 %119, 20
  %121 = or i32 %118, %120
  %122 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %123 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i64, i64* %6, align 8
  %125 = add nsw i64 %124, 14
  %126 = call i32 @RBIOS8(i64 %125)
  %127 = and i32 %126, 15
  store i32 %127, i32* %8, align 4
  %128 = load i64, i64* %6, align 8
  %129 = add nsw i64 %128, 14
  %130 = call i32 @RBIOS8(i64 %129)
  %131 = ashr i32 %130, 4
  %132 = and i32 %131, 15
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = shl i32 %133, 16
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %135, 20
  %137 = or i32 %134, %136
  %138 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %139 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %141 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %91
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %144, %91
  br label %146

146:                                              ; preds = %145, %88
  br label %147

147:                                              ; preds = %146, %87
  %148 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %149 = call i32 @radeon_combios_get_tv_info(%struct.radeon_device* %148)
  %150 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %151 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %24
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %236, label %155

155:                                              ; preds = %152
  %156 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %157 = load i32, i32* @COMBIOS_CRT_INFO_TABLE, align 4
  %158 = call i64 @combios_get_table_offset(%struct.drm_device* %156, i32 %157)
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* %6, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %233

161:                                              ; preds = %155
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @RBIOS8(i64 %162)
  %164 = and i32 %163, 3
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %167, label %200

167:                                              ; preds = %161
  %168 = load i64, i64* %6, align 8
  %169 = add nsw i64 %168, 3
  %170 = call i32 @RBIOS8(i64 %169)
  %171 = and i32 %170, 15
  store i32 %171, i32* %8, align 4
  %172 = load i64, i64* %6, align 8
  %173 = add nsw i64 %172, 3
  %174 = call i32 @RBIOS8(i64 %173)
  %175 = ashr i32 %174, 4
  %176 = and i32 %175, 15
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 %177, 16
  %179 = load i32, i32* %9, align 4
  %180 = shl i32 %179, 20
  %181 = or i32 %178, %180
  %182 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %183 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %185 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %188 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %190 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %193 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %195 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %167
  store i32 1, i32* %11, align 4
  br label %199

199:                                              ; preds = %198, %167
  br label %232

200:                                              ; preds = %161
  %201 = load i64, i64* %6, align 8
  %202 = add nsw i64 %201, 4
  %203 = call i32 @RBIOS8(i64 %202)
  %204 = and i32 %203, 15
  store i32 %204, i32* %8, align 4
  %205 = load i64, i64* %6, align 8
  %206 = add nsw i64 %205, 5
  %207 = call i32 @RBIOS8(i64 %206)
  %208 = and i32 %207, 15
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %8, align 4
  %210 = shl i32 %209, 16
  %211 = load i32, i32* %9, align 4
  %212 = shl i32 %211, 20
  %213 = or i32 %210, %212
  %214 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %215 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %217 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %220 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %222 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %225 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %227 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %200
  store i32 1, i32* %11, align 4
  br label %231

231:                                              ; preds = %230, %200
  br label %232

232:                                              ; preds = %231, %199
  br label %235

233:                                              ; preds = %155
  %234 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %232
  br label %236

236:                                              ; preds = %235, %152
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %241 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %242 = call i32 @radeon_legacy_get_tv_dac_info_from_table(%struct.radeon_device* %240, %struct.radeon_encoder_tv_dac* %241)
  br label %243

243:                                              ; preds = %239, %236
  %244 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  store %struct.radeon_encoder_tv_dac* %244, %struct.radeon_encoder_tv_dac** %2, align 8
  br label %245

245:                                              ; preds = %243, %23
  %246 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %2, align 8
  ret %struct.radeon_encoder_tv_dac* %246
}

declare dso_local %struct.radeon_encoder_tv_dac* @kzalloc(i32, i32) #1

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @radeon_combios_get_tv_info(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @radeon_legacy_get_tv_dac_info_from_table(%struct.radeon_device*, %struct.radeon_encoder_tv_dac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
