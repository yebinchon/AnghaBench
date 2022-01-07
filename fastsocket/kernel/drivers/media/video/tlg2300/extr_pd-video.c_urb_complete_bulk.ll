; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_urb_complete_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_urb_complete_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64, i64, %struct.front_face* }
%struct.front_face = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.video_data }
%struct.video_data = type { i32 }

@EPROTO = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c" submit failed: error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @urb_complete_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urb_complete_bulk(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.front_face*, align 8
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 4
  %10 = load %struct.front_face*, %struct.front_face** %9, align 8
  store %struct.front_face* %10, %struct.front_face** %3, align 8
  %11 = load %struct.front_face*, %struct.front_face** %3, align 8
  %12 = getelementptr inbounds %struct.front_face, %struct.front_face* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.video_data* %14, %struct.video_data** %4, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %5, align 8
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.video_data*, %struct.video_data** %4, align 8
  %23 = getelementptr inbounds %struct.video_data, %struct.video_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26, %1
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EPROTO, align 8
  %36 = sub nsw i64 0, %35
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %63

39:                                               ; preds = %31
  br label %72

40:                                               ; preds = %26
  %41 = load %struct.front_face*, %struct.front_face** %3, align 8
  %42 = load %struct.video_data*, %struct.video_data** %4, align 8
  %43 = call i32 @get_video_frame(%struct.front_face* %41, %struct.video_data* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %63

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.video_data*, %struct.video_data** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @copy_vbi_video_data(%struct.video_data* %53, i8* %54, i32 %55)
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.video_data*, %struct.video_data** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @check_trailer(%struct.video_data* %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %45, %38
  %64 = load %struct.urb*, %struct.urb** %2, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i32 @usb_submit_urb(%struct.urb* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %39, %69, %63
  ret void
}

declare dso_local i32 @get_video_frame(%struct.front_face*, %struct.video_data*) #1

declare dso_local i32 @copy_vbi_video_data(%struct.video_data*, i8*, i32) #1

declare dso_local i32 @check_trailer(%struct.video_data*, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
