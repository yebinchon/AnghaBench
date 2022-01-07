; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_packet_parse_vline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_packet_parse_vline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.drm_mode_object = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_cs_packet = type { i64, i64, i32 }

@RADEON_WAIT_UNTIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"vline wait had illegal wait until segment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_WAIT_CRTC_VLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vline wait had illegal wait until\0A\00", align 1
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot find crtc %d\0A\00", align 1
@R300_CP_PACKET0_REG_MASK = common dso_local global i32 0, align 4
@AVIVO_D2MODE_VLINE_START_END = common dso_local global i32 0, align 4
@RADEON_CRTC2_GUI_TRIG_VLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown crtc reloc\0A\00", align 1
@RADEON_ENG_DISPLAY_SELECT_CRTC1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cs_packet_parse_vline(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.drm_mode_object*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.radeon_cs_packet, align 8
  %8 = alloca %struct.radeon_cs_packet, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %20 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %19, %struct.radeon_cs_packet* %8, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %179

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RADEON_WAIT_UNTIL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %28
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %179

41:                                               ; preds = %33
  %42 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %42, i32 %45)
  %47 = load i32, i32* @RADEON_WAIT_CRTC_VLINE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %179

53:                                               ; preds = %41
  %54 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %55 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %57, %59
  %61 = add nsw i64 %60, 2
  %62 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %54, %struct.radeon_cs_packet* %7, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %2, align 4
  br label %179

67:                                               ; preds = %53
  %68 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, 2
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 2
  %76 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 2
  %83 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 5
  %93 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %90, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @R100_CP_PACKET0_GET_REG(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %103 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %100, i32 %101, i32 %102)
  store %struct.drm_mode_object* %103, %struct.drm_mode_object** %4, align 8
  %104 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %105 = icmp ne %struct.drm_mode_object* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %67
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %179

111:                                              ; preds = %67
  %112 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %113 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %112)
  store %struct.drm_crtc* %113, %struct.drm_crtc** %5, align 8
  %114 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %115 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %114)
  store %struct.radeon_crtc* %115, %struct.radeon_crtc** %6, align 8
  %116 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %117 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %111
  %124 = call i32 @PACKET2(i32 0)
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store volatile i32 %124, i32* %129, align 4
  %130 = call i32 @PACKET2(i32 0)
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store volatile i32 %130, i32* %135, align 4
  br label %178

136:                                              ; preds = %111
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %177

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  switch i32 %140, label %159 [
    i32 129, label %141
    i32 128, label %150
  ]

141:                                              ; preds = %139
  %142 = load i32, i32* @R300_CP_PACKET0_REG_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %11, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* @AVIVO_D2MODE_VLINE_START_END, align 4
  %147 = ashr i32 %146, 2
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %163

150:                                              ; preds = %139
  %151 = load i32, i32* @R300_CP_PACKET0_REG_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %11, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* @RADEON_CRTC2_GUI_TRIG_VLINE, align 4
  %156 = ashr i32 %155, 2
  %157 = load i32, i32* %11, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %11, align 4
  br label %163

159:                                              ; preds = %139
  %160 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %179

163:                                              ; preds = %150, %141
  %164 = load i32, i32* %11, align 4
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store volatile i32 %164, i32* %168, align 4
  %169 = load volatile i32, i32* @RADEON_ENG_DISPLAY_SELECT_CRTC1, align 4
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load volatile i32, i32* %174, align 4
  %176 = or i32 %175, %169
  store volatile i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %163, %136
  br label %178

178:                                              ; preds = %177, %123
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %159, %106, %65, %49, %37, %26
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @R100_CP_PACKET0_GET_REG(i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(i32, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @PACKET2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
