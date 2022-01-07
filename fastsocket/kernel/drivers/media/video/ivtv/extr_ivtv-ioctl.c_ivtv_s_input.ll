; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Input unchanged\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Changing input from %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ivtv_open_id*
  %11 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %10, i32 0, i32 0
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %27 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %69

32:                                               ; preds = %24
  %33 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 4
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %32
  %41 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %62 = call i32 @ivtv_mute(%struct.ivtv* %61)
  %63 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %64 = call i32 @ivtv_video_set_io(%struct.ivtv* %63)
  %65 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %66 = call i32 @ivtv_audio_set_io(%struct.ivtv* %65)
  %67 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %68 = call i32 @ivtv_unmute(%struct.ivtv* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %40, %37, %30, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @ivtv_video_set_io(%struct.ivtv*) #1

declare dso_local i32 @ivtv_audio_set_io(%struct.ivtv*) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
