; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_set_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_4__, %struct.osd_info* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.osd_info = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ivtv_osd_coords = type { i32, i32, i64, i64 }
%struct.v4l2_rect = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ivtvfb_set_var\0A\00", align 1
@IVTV_OSD_BPP_8 = common dso_local global i32 0, align 4
@IVTV_OSD_BPP_32 = common dso_local global i32 0, align 4
@IVTV_OSD_BPP_16_444 = common dso_local global i32 0, align 4
@IVTV_OSD_BPP_16_555 = common dso_local global i32 0, align 4
@IVTV_OSD_BPP_16_565 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ivtvfb_set_var - Invalid bpp\0A\00", align 1
@CX2341X_OSD_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@CX2341X_OSD_SET_FLICKER_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ivtvfb_set_var - Invalid video mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Display size: %dx%d (virtual %dx%d) @ %dbpp\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Display position: %d, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Display filter: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Color space: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"YUV\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.fb_var_screeninfo*)* @ivtvfb_set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_set_var(%struct.ivtv* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.osd_info*, align 8
  %6 = alloca %struct.ivtv_osd_coords, align 8
  %7 = alloca %struct.v4l2_rect, align 8
  %8 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %9 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 1
  %11 = load %struct.osd_info*, %struct.osd_info** %10, align 8
  store %struct.osd_info* %11, %struct.osd_info** %5, align 8
  store i32 -1, i32* %8, align 4
  %12 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @read_reg(i32 10752)
  %19 = or i32 %18, 8192
  %20 = call i32 @write_reg(i32 %19, i32 10752)
  br label %25

21:                                               ; preds = %2
  %22 = call i32 @read_reg(i32 10752)
  %23 = and i32 %22, -8193
  %24 = call i32 @write_reg(i32 %23, i32 10752)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %47 [
    i32 8, label %29
    i32 32, label %31
    i32 16, label %33
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @IVTV_OSD_BPP_8, align 4
  store i32 %30, i32* %8, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load i32, i32* @IVTV_OSD_BPP_32, align 4
  store i32 %32, i32* %8, align 4
  br label %49

33:                                               ; preds = %25
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %44 [
    i32 4, label %38
    i32 5, label %40
    i32 6, label %42
  ]

38:                                               ; preds = %33
  %39 = load i32, i32* @IVTV_OSD_BPP_16_444, align 4
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @IVTV_OSD_BPP_16_555, align 4
  store i32 %41, i32* %8, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @IVTV_OSD_BPP_16_565, align 4
  store i32 %43, i32* %8, align 4
  br label %46

44:                                               ; preds = %33
  %45 = call i32 @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42, %40, %38
  br label %49

47:                                               ; preds = %25
  %48 = call i32 @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %46, %31, %29
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %54 = load i32, i32* @CX2341X_OSD_SET_PIXEL_FORMAT, align 4
  %55 = call i32 @ivtv_vapi(%struct.ivtv* %53, i32 %54, i32 1, i32 0)
  %56 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %57 = load i32, i32* @CX2341X_OSD_SET_PIXEL_FORMAT, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ivtv_vapi(%struct.ivtv* %56, i32 %57, i32 1, i32 %58)
  br label %60

60:                                               ; preds = %52, %49
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %65 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %68, 8
  %70 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %71 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FB_VMODE_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %85 [
    i32 128, label %77
    i32 129, label %81
  ]

77:                                               ; preds = %60
  %78 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %79 = load i32, i32* @CX2341X_OSD_SET_FLICKER_STATE, align 4
  %80 = call i32 @ivtv_vapi(%struct.ivtv* %78, i32 %79, i32 1, i32 1)
  br label %87

81:                                               ; preds = %60
  %82 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %83 = load i32, i32* @CX2341X_OSD_SET_FLICKER_STATE, align 4
  %84 = call i32 @ivtv_vapi(%struct.ivtv* %82, i32 %83, i32 1, i32 0)
  br label %87

85:                                               ; preds = %60
  %86 = call i32 @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81, %77
  %88 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %89 = call i32 @ivtvfb_get_osd_coords(%struct.ivtv* %88, %struct.ivtv_osd_coords* %6)
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %6, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %6, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %6, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %6, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %101 = call i32 @ivtvfb_set_osd_coords(%struct.ivtv* %100, %struct.ivtv_osd_coords* %6)
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %87
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %114, %87
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, 1
  %134 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 1
  store i64 %133, i64* %134, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, 1
  %139 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %141 = call i32 @ivtvfb_set_display_window(%struct.ivtv* %140, %struct.v4l2_rect* %7)
  %142 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %6, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %6, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %150 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %153 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %156 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %155, i32 0, i32 2
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = call i32 @memcpy(i32* %156, %struct.fb_var_screeninfo* %157, i32 4)
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %164, i32 %167, i32 %170, i32 %173)
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %177, i64 %180)
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @FB_VMODE_MASK, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 128
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %190 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %189)
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %197 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %196)
  ret i32 0
}

declare dso_local i32 @IVTVFB_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @IVTVFB_DEBUG_WARN(i8*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @ivtvfb_get_osd_coords(%struct.ivtv*, %struct.ivtv_osd_coords*) #1

declare dso_local i32 @ivtvfb_set_osd_coords(%struct.ivtv*, %struct.ivtv_osd_coords*) #1

declare dso_local i32 @ivtvfb_set_display_window(%struct.ivtv*, %struct.v4l2_rect*) #1

declare dso_local i32 @memcpy(i32*, %struct.fb_var_screeninfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
