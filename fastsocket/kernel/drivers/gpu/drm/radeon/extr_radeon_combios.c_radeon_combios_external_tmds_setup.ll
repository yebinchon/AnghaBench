; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_external_tmds_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_external_tmds_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_ext_tmds* }
%struct.radeon_encoder_ext_tmds = type { i32, i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@COMBIOS_TMDS_POWER_ON_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unknown id %d\0A\00", align 1
@COMBIOS_EXT_TMDS_INFO_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_combios_external_tmds_setup(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.radeon_encoder_ext_tmds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %4, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.radeon_device*, %struct.radeon_device** %22, align 8
  store %struct.radeon_device* %23, %struct.radeon_device** %5, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %25 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %24)
  store %struct.radeon_encoder* %25, %struct.radeon_encoder** %6, align 8
  %26 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %26, i32 0, i32 0
  %28 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %27, align 8
  store %struct.radeon_encoder_ext_tmds* %28, %struct.radeon_encoder_ext_tmds** %17, align 8
  %29 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %17, align 8
  %30 = icmp ne %struct.radeon_encoder_ext_tmds* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %251

32:                                               ; preds = %1
  %33 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RADEON_IS_IGP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %147

39:                                               ; preds = %32
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load i32, i32* @COMBIOS_TMDS_POWER_ON_TABLE, align 4
  %42 = call i32 @combios_get_table_offset(%struct.drm_device* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @RBIOS8(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %146

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @RBIOS8(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %145

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 3
  %55 = call i32 @RBIOS8(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %141, %52
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %144

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @RBIOS16(i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = ashr i32 %66, 13
  switch i32 %67, label %137 [
    i32 0, label %68
    i32 2, label %79
    i32 3, label %101
    i32 4, label %108
    i32 6, label %115
  ]

68:                                               ; preds = %61
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 8191
  %71 = mul nsw i32 %70, 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @RBIOS32(i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @WREG32(i32 %76, i32 %77)
  br label %141

79:                                               ; preds = %61
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 8191
  %82 = mul nsw i32 %81, 4
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @RBIOS32(i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @RBIOS32(i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @RREG32(i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %16, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @WREG32(i32 %98, i32 %99)
  br label %141

101:                                              ; preds = %61
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @RBIOS16(i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @udelay(i32 %106)
  br label %141

108:                                              ; preds = %61
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @RBIOS16(i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @mdelay(i32 %113)
  br label %141

115:                                              ; preds = %61
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, 255
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = ashr i32 %118, 1
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @RBIOS8(i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @RBIOS8(i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %17, align 8
  %131 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @radeon_i2c_put_byte(i32 %132, i32 %133, i32 %134, i32 %135)
  br label %141

137:                                              ; preds = %61
  %138 = load i32, i32* %12, align 4
  %139 = ashr i32 %138, 13
  %140 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %115, %108, %101, %79, %68
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %8, align 4
  br label %58

144:                                              ; preds = %58
  store i32 1, i32* %2, align 4
  br label %251

145:                                              ; preds = %47
  br label %146

146:                                              ; preds = %145, %39
  br label %250

147:                                              ; preds = %32
  %148 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %149 = load i32, i32* @COMBIOS_EXT_TMDS_INFO_TABLE, align 4
  %150 = call i32 @combios_get_table_offset(%struct.drm_device* %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %249

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 10
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @RBIOS16(i32 %156)
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %245, %153
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 65535
  br i1 %160, label %161, label %248

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = ashr i32 %164, 13
  switch i32 %165, label %241 [
    i32 0, label %166
    i32 2, label %175
    i32 4, label %197
    i32 5, label %204
    i32 6, label %225
  ]

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = and i32 %167, 8191
  %169 = mul nsw i32 %168, 4
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @RBIOS32(i32 %170)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @WREG32(i32 %172, i32 %173)
  br label %245

175:                                              ; preds = %161
  %176 = load i32, i32* %12, align 4
  %177 = and i32 %176, 8191
  %178 = mul nsw i32 %177, 4
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @RBIOS32(i32 %179)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 4
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @RBIOS32(i32 %183)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 4
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @RREG32(i32 %187)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* %16, align 4
  %193 = or i32 %191, %192
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @WREG32(i32 %194, i32 %195)
  br label %245

197:                                              ; preds = %161
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @RBIOS16(i32 %198)
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @udelay(i32 %202)
  br label %245

204:                                              ; preds = %161
  %205 = load i32, i32* %12, align 4
  %206 = and i32 %205, 8191
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @RBIOS32(i32 %207)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 4
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @RBIOS32(i32 %211)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 4
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @RREG32_PLL(i32 %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %15, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* %16, align 4
  %221 = or i32 %219, %220
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @WREG32_PLL(i32 %222, i32 %223)
  br label %245

225:                                              ; preds = %161
  %226 = load i32, i32* %12, align 4
  %227 = and i32 %226, 8191
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @RBIOS8(i32 %228)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %11, align 4
  %232 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %17, align 8
  %233 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %17, align 8
  %236 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @radeon_i2c_put_byte(i32 %234, i32 %237, i32 %238, i32 %239)
  br label %245

241:                                              ; preds = %161
  %242 = load i32, i32* %12, align 4
  %243 = ashr i32 %242, 13
  %244 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %241, %225, %204, %197, %175, %166
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @RBIOS16(i32 %246)
  store i32 %247, i32* %12, align 4
  br label %158

248:                                              ; preds = %158
  store i32 1, i32* %2, align 4
  br label %251

249:                                              ; preds = %147
  br label %250

250:                                              ; preds = %249, %146
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %250, %248, %144, %31
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i32) #1

declare dso_local i32 @RBIOS16(i32) #1

declare dso_local i32 @RBIOS32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @radeon_i2c_put_byte(i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
