; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_fill_detail_timing_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_fill_detail_timing_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lvds_dvo_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*, %struct.lvds_dvo_timing*)* @fill_detail_timing_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_detail_timing_data(%struct.drm_display_mode* %0, %struct.lvds_dvo_timing* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.lvds_dvo_timing*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %struct.lvds_dvo_timing* %1, %struct.lvds_dvo_timing** %4, align 8
  %5 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %6 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 8
  %9 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %10 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %19 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 8
  %22 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %23 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = add nsw i32 %17, %25
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %33 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %42 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %46 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %44, %47
  %49 = add nsw i32 %40, %48
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %53 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %57 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %66 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %75 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %73, %76
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %84 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %88 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %86, %89
  %91 = add nsw i32 %82, %90
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %95 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 10
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 4
  %103 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %104 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %103, i32 0, i32 15
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %2
  %108 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %119

113:                                              ; preds = %2
  %114 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %116 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %107
  %120 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %121 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %120, i32 0, i32 14
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %136

130:                                              ; preds = %119
  %131 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %138 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %146 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %144, %136
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %151
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %151
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %168 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %167)
  ret void
}

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
