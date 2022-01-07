; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_urb_complete_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_urb_complete_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.front_face* }
%struct.front_face = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.video_data }
%struct.video_data = type { i32, i32 }

@ISO_PKT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09 We got too much bubble\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"usb_submit_urb err : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @urb_complete_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urb_complete_iso(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.front_face*, align 8
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.front_face*, %struct.front_face** %11, align 8
  store %struct.front_face* %12, %struct.front_face** %3, align 8
  %13 = load %struct.front_face*, %struct.front_face** %3, align 8
  %14 = getelementptr inbounds %struct.front_face, %struct.front_face* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.video_data* %16, %struct.video_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.video_data*, %struct.video_data** %4, align 8
  %22 = getelementptr inbounds %struct.video_data, %struct.video_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %87

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %69, %26
  %28 = load %struct.front_face*, %struct.front_face** %3, align 8
  %29 = load %struct.video_data*, %struct.video_data** %4, align 8
  %30 = call i32 @get_video_frame(%struct.front_face* %28, %struct.video_data* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %78

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = call i32 @get_chunk(i32 %34, %struct.urb* %35, i32* %6, i32* %7, i32* %5)
  switch i32 %36, label %68 [
    i32 130, label %37
    i32 128, label %52
    i32 131, label %62
    i32 129, label %63
  ]

37:                                               ; preds = %33
  %38 = load %struct.video_data*, %struct.video_data** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ISO_PKT_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @ISO_PKT_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i32 @copy_vbi_video_data(%struct.video_data* %38, i8* %44, i32 %50)
  br label %68

52:                                               ; preds = %33
  %53 = load %struct.video_data*, %struct.video_data** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ISO_PKT_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i32, i32* @ISO_PKT_SIZE, align 4
  %61 = call i32 @check_trailer(%struct.video_data* %53, i8* %59, i32 %60)
  br label %68

62:                                               ; preds = %33
  br label %78

63:                                               ; preds = %33
  %64 = call i32 (i8*, ...) @log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.video_data*, %struct.video_data** %4, align 8
  %66 = getelementptr inbounds %struct.video_data, %struct.video_data* %65, i32 0, i32 0
  %67 = call i32 @schedule_work(i32* %66)
  br label %87

68:                                               ; preds = %33, %52, %37
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.urb*, %struct.urb** %2, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %27, label %77

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %62, %32
  %79 = load %struct.urb*, %struct.urb** %2, align 8
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call i32 @usb_submit_urb(%struct.urb* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i8*, ...) @log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %25, %63, %84, %78
  ret void
}

declare dso_local i32 @get_video_frame(%struct.front_face*, %struct.video_data*) #1

declare dso_local i32 @get_chunk(i32, %struct.urb*, i32*, i32*, i32*) #1

declare dso_local i32 @copy_vbi_video_data(%struct.video_data*, i8*, i32) #1

declare dso_local i32 @check_trailer(%struct.video_data*, i8*, i32) #1

declare dso_local i32 @log(i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
