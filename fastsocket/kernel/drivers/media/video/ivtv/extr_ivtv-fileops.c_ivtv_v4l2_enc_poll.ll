; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_enc_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_enc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not start capture for %s (%d)\0A\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Encoder poll started capture\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Encoder poll\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_enc_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ivtv_open_id*, align 8
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ivtv_open_id* @fh2id(i32 %13)
  store %struct.ivtv_open_id* %14, %struct.ivtv_open_id** %6, align 8
  %15 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %6, align 8
  %16 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %15, i32 0, i32 1
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %7, align 8
  %18 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 1
  %20 = load %struct.ivtv_stream*, %struct.ivtv_stream** %19, align 8
  %21 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %6, align 8
  %22 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %20, i64 %23
  store %struct.ivtv_stream* %24, %struct.ivtv_stream** %8, align 8
  %25 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %26 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %27 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %26, i32 0, i32 4
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %33 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %34 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %33, i32 0, i32 4
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %31
  %38 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %6, align 8
  %42 = call i32 @ivtv_start_capture(%struct.ivtv_open_id* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %50 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @POLLERR, align 4
  store i32 %54, i32* %3, align 4
  br label %85

55:                                               ; preds = %37
  %56 = call i32 @IVTV_DEBUG_FILE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %31, %2
  %58 = call i32 @IVTV_DEBUG_HI_FILE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %61 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %60, i32 0, i32 2
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @poll_wait(%struct.file* %59, i32* %61, i32* %62)
  %64 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %65 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %71 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %57
  %76 = load i32, i32* @POLLIN, align 4
  %77 = load i32, i32* @POLLRDNORM, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @POLLHUP, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82, %75, %48
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ivtv_start_capture(%struct.ivtv_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @IVTV_DEBUG_FILE(i8*) #1

declare dso_local i32 @IVTV_DEBUG_HI_FILE(i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
