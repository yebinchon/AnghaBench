; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_menu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.v4l2_querymenu = type { i64, i32, i8* }
%struct.uvc_menu_info = type { i32 }
%struct.uvc_control_mapping = type { i64, i64, %struct.uvc_menu_info* }
%struct.uvc_control = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_v4l2_menu(%struct.uvc_video_chain* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.uvc_menu_info*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_control*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %12 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %9, align 8
  %16 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %20 = call i32 @memset(%struct.v4l2_querymenu* %19, i32 0, i32 24)
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %29 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock_interruptible(i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ERESTARTSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %2
  %37 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %38 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %37, i8* %40, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %41, %struct.uvc_control** %8, align 8
  %42 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %43 = icmp eq %struct.uvc_control* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %46 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %36
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %79

53:                                               ; preds = %44
  %54 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %58 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %79

64:                                               ; preds = %53
  %65 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %66 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %65, i32 0, i32 2
  %67 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %66, align 8
  %68 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %67, i64 %70
  store %struct.uvc_menu_info* %71, %struct.uvc_menu_info** %6, align 8
  %72 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %6, align 8
  %76 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strlcpy(i32 %74, i32 %77, i32 4)
  br label %79

79:                                               ; preds = %64, %61, %50
  %80 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %81 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.v4l2_querymenu*, i32, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i8*, %struct.uvc_control_mapping**) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
