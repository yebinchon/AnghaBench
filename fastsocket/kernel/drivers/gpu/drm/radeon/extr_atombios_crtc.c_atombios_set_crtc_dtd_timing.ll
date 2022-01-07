; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_set_crtc_dtd_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_set_crtc_dtd_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.radeon_crtc = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8* }

@COMMAND = common dso_local global i32 0, align 4
@SetCRTC_UsingDTDTiming = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_CSYNC = common dso_local global i32 0, align 4
@ATOM_COMPOSITESYNC = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@ATOM_DOUBLE_CLOCK_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_set_crtc_dtd_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %11)
  store %struct.radeon_crtc* %12, %struct.radeon_crtc** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %7, align 8
  %19 = load i32, i32* @COMMAND, align 4
  %20 = load i32, i32* @SetCRTC_UsingDTDTiming, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %22 = call i32 @memset(%struct.TYPE_7__* %8, i32 0, i32 88)
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %25, %30
  %32 = call i8* @cpu_to_le16(i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 11
  store i8* %32, i8** %33, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = call i8* @cpu_to_le16(i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 10
  store i8* %47, i8** %48, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %51, %56
  %58 = call i8* @cpu_to_le16(i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 9
  store i8* %58, i8** %59, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %66, %71
  %73 = call i8* @cpu_to_le16(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  store i8* %73, i8** %74, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %83 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = call i8* @cpu_to_le16(i64 %86)
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i8* %87, i8** %88, align 8
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = call i8* @cpu_to_le16(i64 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i8* %96, i8** %97, align 8
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %106 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %104, %108
  %110 = call i8* @cpu_to_le16(i64 %109)
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i8* %110, i8** %111, align 8
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %116 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = call i8* @cpu_to_le16(i64 %118)
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i8* %119, i8** %120, align 8
  %121 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %122 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %2
  %136 = load i64, i64* @ATOM_VSYNC_POLARITY, align 8
  %137 = load i64, i64* %10, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %135, %2
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i64, i64* @ATOM_HSYNC_POLARITY, align 8
  %148 = load i64, i64* %10, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %146, %139
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i64, i64* @ATOM_COMPOSITESYNC, align 8
  %159 = load i64, i64* %10, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %10, align 8
  br label %161

161:                                              ; preds = %157, %150
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i64, i64* @ATOM_INTERLACE, align 8
  %170 = load i64, i64* %10, align 8
  %171 = or i64 %170, %169
  store i64 %171, i64* %10, align 8
  br label %172

172:                                              ; preds = %168, %161
  %173 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %174 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i64, i64* @ATOM_DOUBLE_CLOCK_MODE, align 8
  %181 = load i64, i64* %10, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %10, align 8
  br label %183

183:                                              ; preds = %179, %172
  %184 = load i64, i64* %10, align 8
  %185 = call i8* @cpu_to_le16(i64 %184)
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %189 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %190, i32* %191, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = bitcast %struct.TYPE_7__* %8 to i32*
  %198 = call i32 @atom_execute_table(i32 %195, i32 %196, i32* %197)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
