; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_dtd_from_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_dtd_from_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo_dtd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DTD_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DTD_FLAG_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DTD_FLAG_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo_dtd*, %struct.drm_display_mode*)* @intel_sdvo_get_dtd_from_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.intel_sdvo_dtd*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_sdvo_dtd* %0, %struct.intel_sdvo_dtd** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %66 = call i64 @intel_mode_get_pixel_multiplier(%struct.drm_display_mode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %2
  br label %70

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %69, %68
  %71 = phi i64 [ %66, %68 ], [ 1, %69 ]
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = sdiv i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sdiv i32 %76, 10
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %80 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 255
  %84 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %85 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 255
  %89 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %90 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 15
  %95 = shl i32 %94, 4
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 15
  %99 = or i32 %95, %98
  %100 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %101 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, 255
  %105 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %106 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 255
  %110 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %111 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 5
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 8
  %119 = and i32 %118, 15
  %120 = or i32 %116, %119
  %121 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %122 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, 255
  %126 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %127 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, 255
  %131 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %132 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %134, 15
  %136 = shl i32 %135, 4
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, 15
  %139 = or i32 %136, %138
  %140 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %141 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 768
  %145 = ashr i32 %144, 2
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, 768
  %148 = ashr i32 %147, 4
  %149 = or i32 %145, %148
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 48
  %152 = ashr i32 %151, 2
  %153 = or i32 %149, %152
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %154, 48
  %156 = ashr i32 %155, 4
  %157 = or i32 %153, %156
  %158 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %159 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  %161 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %162 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 4
  store i32 24, i32* %163, align 8
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %70
  %171 = load i32, i32* @DTD_FLAG_INTERLACE, align 4
  %172 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %173 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %170, %70
  %178 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %179 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i32, i32* @DTD_FLAG_HSYNC_POSITIVE, align 4
  %186 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %187 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %193 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load i32, i32* @DTD_FLAG_VSYNC_POSITIVE, align 4
  %200 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %201 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %199
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %198, %191
  %206 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %207 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 7
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* %12, align 4
  %210 = and i32 %209, 192
  %211 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %212 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 5
  store i32 %210, i32* %213, align 4
  %214 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %3, align 8
  %215 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 6
  store i64 0, i64* %216, align 8
  ret void
}

declare dso_local i64 @intel_mode_get_pixel_multiplier(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
