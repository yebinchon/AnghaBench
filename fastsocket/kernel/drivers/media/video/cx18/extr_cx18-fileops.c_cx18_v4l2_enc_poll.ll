; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_v4l2_enc_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_v4l2_enc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx18_open_id* }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { i32, %struct.cx18_stream* }
%struct.cx18_stream = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CX18_F_S_STREAMOFF = common dso_local global i32 0, align 4
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not start capture for %s (%d)\0A\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Encoder poll started capture\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Encoder poll\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_v4l2_enc_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cx18_open_id*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca %struct.cx18_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %12, align 8
  store %struct.cx18_open_id* %13, %struct.cx18_open_id** %6, align 8
  %14 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %15 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %14, i32 0, i32 1
  %16 = load %struct.cx18*, %struct.cx18** %15, align 8
  store %struct.cx18* %16, %struct.cx18** %7, align 8
  %17 = load %struct.cx18*, %struct.cx18** %7, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 1
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %18, align 8
  %20 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %21 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i64 %22
  store %struct.cx18_stream* %23, %struct.cx18_stream** %8, align 8
  %24 = load i32, i32* @CX18_F_S_STREAMOFF, align 4
  %25 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %26 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %25, i32 0, i32 3
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 3
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %30
  %37 = load %struct.cx18*, %struct.cx18** %7, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %41 = call i32 @cx18_start_capture(%struct.cx18_open_id* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.cx18*, %struct.cx18** %7, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %49 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @POLLERR, align 4
  store i32 %53, i32* %3, align 4
  br label %78

54:                                               ; preds = %36
  %55 = call i32 @CX18_DEBUG_FILE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %30, %2
  %57 = call i32 @CX18_DEBUG_HI_FILE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %60 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %59, i32 0, i32 1
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @poll_wait(%struct.file* %58, i32* %60, i32* %61)
  %63 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %64 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32, i32* @POLLIN, align 4
  %70 = load i32, i32* @POLLRDNORM, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %3, align 4
  br label %78

72:                                               ; preds = %56
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @POLLHUP, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %75, %68, %47
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx18_start_capture(%struct.cx18_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @CX18_DEBUG_FILE(i8*) #1

declare dso_local i32 @CX18_DEBUG_HI_FILE(i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
