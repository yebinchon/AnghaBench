; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c__ivtvfb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c__ivtvfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ivtv = type { %struct.TYPE_6__, i64, %struct.osd_info* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.osd_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ivtvfb_check_var\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid colour mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IVTV_OSD_MAX_WIDTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid resolution: %dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid virtual resolution: %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid resolution for 8bpp: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid virtual resolution for 8bpp: %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Invalid resolution for 16bpp: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Invalid virtual resolution for 16bpp: %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Invalid offset: %d (%d) %d (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid nonstd % d\0A\00", align 1
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Invalid video mode: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Display size: %dx%d (virtual %dx%d) @ %dbpp\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Display position: %d, %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Display filter: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Color space: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"YUV\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.ivtv*)* @_ivtvfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ivtvfb_check_var(%struct.fb_var_screeninfo* %0, %struct.ivtv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.osd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.ivtv* %1, %struct.ivtv** %5, align 8
  %11 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 2
  %13 = load %struct.osd_info*, %struct.osd_info** %12, align 8
  store %struct.osd_info* %13, %struct.osd_info** %6, align 8
  %14 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 84316, i32* %8, align 4
  store i32 776, i32* %9, align 4
  store i32 591, i32* %10, align 4
  store i32 576, i32* %7, align 4
  br label %21

20:                                               ; preds = %2
  store i32 83926, i32* %8, align 4
  store i32 776, i32* %9, align 4
  store i32 495, i32* %10, align 4
  store i32 480, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %56

31:                                               ; preds = %26, %21
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 16
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 24, i32* %34, align 8
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 16
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 8, i32* %37, align 4
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 19
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 16, i32* %40, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 19
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 8, i32* %43, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 18
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 8, i32* %46, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 18
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 8, i32* %49, align 4
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 17
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 17
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 8, i32* %55, align 8
  br label %150

56:                                               ; preds = %26
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %142

61:                                               ; preds = %56
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 18
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %116 [
    i32 4, label %66
    i32 5, label %91
  ]

66:                                               ; preds = %61
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 19
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 8, i32* %69, align 8
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 19
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 4, i32* %72, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 18
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 4, i32* %75, align 8
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 18
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 4, i32* %78, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 17
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 17
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 16
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 12, i32* %87, align 8
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 16
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %141

91:                                               ; preds = %61
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 19
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 10, i32* %94, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 19
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 5, i32* %97, align 4
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 18
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 5, i32* %100, align 8
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 18
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 5, i32* %103, align 4
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 17
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %107, i32 0, i32 17
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 5, i32* %109, align 8
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 16
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 15, i32* %112, align 8
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 16
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %141

116:                                              ; preds = %61
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 19
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 11, i32* %119, align 8
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 19
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 5, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 18
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 5, i32* %125, align 8
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 18
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 6, i32* %128, align 4
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 17
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 17
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i32 5, i32* %134, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 16
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 16
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %116, %91, %66
  br label %149

142:                                              ; preds = %56
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %506

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %31
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IVTV_OSD_MAX_WIDTH, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %156, %150
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %506

172:                                              ; preds = %156
  %173 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %174 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sdiv i32 %178, 8
  %180 = sdiv i32 4095, %179
  %181 = icmp sgt i32 %175, %180
  br i1 %181, label %215, label %182

182:                                              ; preds = %172
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %185, %188
  %190 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %191 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sdiv i32 %192, 8
  %194 = mul nsw i32 %189, %193
  %195 = load %struct.osd_info*, %struct.osd_info** %6, align 8
  %196 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %194, %197
  br i1 %198, label %215, label %199

199:                                              ; preds = %182
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %215, label %207

207:                                              ; preds = %199
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %207, %199, %182, %172
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %218, i32 %221)
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %3, align 4
  br label %506

225:                                              ; preds = %207
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 8
  br i1 %229, label %230, label %257

230:                                              ; preds = %225
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 3
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %3, align 4
  br label %506

243:                                              ; preds = %230
  %244 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %245 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 3
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %243
  %250 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %251 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %3, align 4
  br label %506

256:                                              ; preds = %243
  br label %290

257:                                              ; preds = %225
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 16
  br i1 %261, label %262, label %289

262:                                              ; preds = %257
  %263 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, 1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %270 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %3, align 4
  br label %506

275:                                              ; preds = %262
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 1
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %275
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %3, align 4
  br label %506

288:                                              ; preds = %275
  br label %289

289:                                              ; preds = %288, %257
  br label %290

290:                                              ; preds = %289, %256
  %291 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %292 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %295 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp sge i32 %293, %296
  br i1 %297, label %306, label %298

298:                                              ; preds = %290
  %299 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = icmp sge i32 %301, %304
  br i1 %305, label %306, label %322

306:                                              ; preds = %298, %290
  %307 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %308 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %311 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %314 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %317 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %309, i32 %312, i32 %315, i32 %318)
  %320 = load i32, i32* @EINVAL, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %3, align 4
  br label %506

322:                                              ; preds = %298
  %323 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %324 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %323, i32 0, i32 7
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %325, 1
  br i1 %326, label %327, label %334

327:                                              ; preds = %322
  %328 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %329 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* @EINVAL, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %3, align 4
  br label %506

334:                                              ; preds = %322
  %335 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %336 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %335, i32 0, i32 8
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @FB_VMODE_MASK, align 4
  %339 = and i32 %337, %338
  %340 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %359

342:                                              ; preds = %334
  %343 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %344 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %343, i32 0, i32 8
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @FB_VMODE_MASK, align 4
  %347 = and i32 %345, %346
  %348 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %349 = icmp ne i32 %347, %348
  br i1 %349, label %350, label %359

350:                                              ; preds = %342
  %351 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %352 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @FB_VMODE_MASK, align 4
  %355 = and i32 %353, %354
  %356 = call i32 (i8*, i32, ...) @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %3, align 4
  br label %506

359:                                              ; preds = %342, %334
  %360 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %361 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %360, i32 0, i32 9
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %364 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %362, %365
  %367 = load i32, i32* @IVTV_OSD_MAX_WIDTH, align 4
  %368 = add nsw i32 %367, 1
  %369 = icmp sgt i32 %366, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %359
  %371 = load i32, i32* @IVTV_OSD_MAX_WIDTH, align 4
  %372 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %373 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 %371, %374
  %376 = sdiv i32 %375, 2
  %377 = add nsw i32 1, %376
  %378 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %379 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %378, i32 0, i32 9
  store i32 %377, i32* %379, align 4
  br label %380

380:                                              ; preds = %370, %359
  %381 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %382 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %381, i32 0, i32 10
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %385 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = add nsw i32 %383, %386
  %388 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %389 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i32 577, i32 481
  %394 = icmp sgt i32 %387, %393
  br i1 %394, label %395, label %410

395:                                              ; preds = %380
  %396 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %397 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  %400 = zext i1 %399 to i64
  %401 = select i1 %399, i32 576, i32 480
  %402 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %403 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = sub nsw i32 %401, %404
  %406 = sdiv i32 %405, 2
  %407 = add nsw i32 1, %406
  %408 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %409 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %408, i32 0, i32 10
  store i32 %407, i32* %409, align 8
  br label %410

410:                                              ; preds = %395, %380
  %411 = load i32, i32* %9, align 4
  %412 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %413 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 4
  %415 = sub nsw i32 %411, %414
  %416 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %417 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = sub nsw i32 %415, %418
  %420 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %421 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %420, i32 0, i32 11
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* %10, align 4
  %423 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %424 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %423, i32 0, i32 10
  %425 = load i32, i32* %424, align 8
  %426 = sub nsw i32 %422, %425
  %427 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %428 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = sub nsw i32 %426, %429
  %431 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %432 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %431, i32 0, i32 12
  store i32 %430, i32* %432, align 8
  %433 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %434 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %433, i32 0, i32 13
  store i32 24, i32* %434, align 4
  %435 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %436 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %435, i32 0, i32 14
  store i32 2, i32* %436, align 8
  %437 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %438 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %437, i32 0, i32 8
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @FB_VMODE_MASK, align 4
  %441 = and i32 %439, %440
  %442 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %449

444:                                              ; preds = %410
  %445 = load i32, i32* %8, align 4
  %446 = sdiv i32 %445, 2
  %447 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %448 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %447, i32 0, i32 15
  store i32 %446, i32* %448, align 4
  br label %453

449:                                              ; preds = %410
  %450 = load i32, i32* %8, align 4
  %451 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %452 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %451, i32 0, i32 15
  store i32 %450, i32* %452, align 4
  br label %453

453:                                              ; preds = %449, %444
  %454 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %455 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %458 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 0
  store i32 %456, i32* %459, align 8
  %460 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %461 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %464 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 1
  store i32 %462, i32* %465, align 4
  %466 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %467 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %470 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %473 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %476 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %479 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %468, i32 %471, i32 %474, i32 %477, i32 %480)
  %482 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %483 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %482, i32 0, i32 9
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %486 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 8
  %488 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %484, i32 %487)
  %489 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %490 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %489, i32 0, i32 8
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @FB_VMODE_MASK, align 4
  %493 = and i32 %491, %492
  %494 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %495 = icmp eq i32 %493, %494
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  %498 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %497)
  %499 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %500 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %499, i32 0, i32 7
  %501 = load i32, i32* %500, align 4
  %502 = icmp ne i32 %501, 0
  %503 = zext i1 %502 to i64
  %504 = select i1 %502, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)
  %505 = call i32 (i8*, ...) @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %504)
  store i32 0, i32* %3, align 4
  br label %506

506:                                              ; preds = %453, %350, %327, %306, %281, %268, %249, %236, %215, %162, %142
  %507 = load i32, i32* %3, align 4
  ret i32 %507
}

declare dso_local i32 @IVTVFB_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @IVTVFB_DEBUG_WARN(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
