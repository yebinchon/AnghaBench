; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18_open_id = type { i32, %struct.cx18* }
%struct.cx18 = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Input unchanged\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Changing input from %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cx18_open_id*
  store %struct.cx18_open_id* %12, %struct.cx18_open_id** %8, align 8
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 1
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %9, align 8
  %16 = load %struct.cx18*, %struct.cx18** %9, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 4
  %18 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %19 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @v4l2_prio_check(i32* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.cx18*, %struct.cx18** %9, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.cx18*, %struct.cx18** %9, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %72

43:                                               ; preds = %35
  %44 = load %struct.cx18*, %struct.cx18** %9, align 8
  %45 = getelementptr inbounds %struct.cx18, %struct.cx18* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.cx18*, %struct.cx18** %9, align 8
  %51 = getelementptr inbounds %struct.cx18, %struct.cx18* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cx18*, %struct.cx18** %9, align 8
  %53 = getelementptr inbounds %struct.cx18, %struct.cx18* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cx18*, %struct.cx18** %9, align 8
  %63 = getelementptr inbounds %struct.cx18, %struct.cx18* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cx18*, %struct.cx18** %9, align 8
  %65 = call i32 @cx18_mute(%struct.cx18* %64)
  %66 = load %struct.cx18*, %struct.cx18** %9, align 8
  %67 = call i32 @cx18_video_set_io(%struct.cx18* %66)
  %68 = load %struct.cx18*, %struct.cx18** %9, align 8
  %69 = call i32 @cx18_audio_set_io(%struct.cx18* %68)
  %70 = load %struct.cx18*, %struct.cx18** %9, align 8
  %71 = call i32 @cx18_unmute(%struct.cx18* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %43, %41, %32, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @cx18_video_set_io(%struct.cx18*) #1

declare dso_local i32 @cx18_audio_set_io(%struct.cx18*) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
