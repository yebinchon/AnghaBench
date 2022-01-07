; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_overscan_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_overscan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.radeon_crtc = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32 }

@COMMAND = common dso_local global i32 0, align 4
@SetCRTC_OverScan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @atombios_overscan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_overscan_setup(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %8, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %21 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %20)
  store %struct.radeon_crtc* %21, %struct.radeon_crtc** %9, align 8
  %22 = load i32, i32* @COMMAND, align 4
  %23 = load i32, i32* @SetCRTC_OverScan, align 4
  %24 = call i32 @GetIndexIntoMasterTable(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 40)
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %149 [
    i32 129, label %33
    i32 130, label %74
    i32 128, label %148
  ]

33:                                               ; preds = %3
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sdiv i32 %40, 2
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = sdiv i32 %50, 2
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = sdiv i32 %60, 2
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = sdiv i32 %70, 2
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i8* %72, i8** %73, align 8
  br label %170

74:                                               ; preds = %3
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  store i32 %81, i32* %12, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %74
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %96, %99
  %101 = sub nsw i32 %95, %100
  %102 = sdiv i32 %101, 2
  %103 = call i8* @cpu_to_le16(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %108, %111
  %113 = sub nsw i32 %107, %112
  %114 = sdiv i32 %113, 2
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i8* %115, i8** %116, align 8
  br label %147

117:                                              ; preds = %74
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %117
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %123 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %125, %128
  %130 = sub nsw i32 %124, %129
  %131 = sdiv i32 %130, 2
  %132 = call i8* @cpu_to_le16(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* %132, i8** %133, align 8
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %137, %140
  %142 = sub nsw i32 %136, %141
  %143 = sdiv i32 %142, 2
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %121, %117
  br label %147

147:                                              ; preds = %146, %92
  br label %170

148:                                              ; preds = %3
  br label %149

149:                                              ; preds = %3, %148
  %150 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %151 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i8* %153, i8** %154, align 8
  %155 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %156 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @cpu_to_le16(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %158, i8** %159, align 8
  %160 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %161 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @cpu_to_le16(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %163, i8** %164, align 8
  %165 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %166 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %149, %147, %33
  %171 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = bitcast %struct.TYPE_5__* %10 to i32*
  %177 = call i32 @atom_execute_table(i32 %174, i32 %175, i32* %176)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
