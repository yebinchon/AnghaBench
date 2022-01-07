; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_get_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_get_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.osd_info* }
%struct.osd_info = type { i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ivtvfb_get_fix\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cx23415 TV out\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.fb_fix_screeninfo*)* @ivtvfb_get_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_get_fix(%struct.ivtv* %0, %struct.fb_fix_screeninfo* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.fb_fix_screeninfo*, align 8
  %5 = alloca %struct.osd_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.fb_fix_screeninfo* %1, %struct.fb_fix_screeninfo** %4, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 0
  %8 = load %struct.osd_info*, %struct.osd_info** %7, align 8
  store %struct.osd_info* %8, %struct.osd_info** %5, align 8
  %9 = call i32 @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %11 = call i32 @memset(%struct.fb_fix_screeninfo* %10, i32 0, i32 48)
  %12 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strlcpy(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %16 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %17 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %20 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %22 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %27 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %30 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %48 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @FB_ACCEL_NONE, align 4
  %53 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  ret i32 0
}

declare dso_local i32 @IVTVFB_DEBUG_INFO(i8*) #1

declare dso_local i32 @memset(%struct.fb_fix_screeninfo*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
