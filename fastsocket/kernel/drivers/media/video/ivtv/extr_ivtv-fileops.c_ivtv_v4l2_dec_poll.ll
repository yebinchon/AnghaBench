; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_dec_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_dec_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv_open_id = type { i64, %struct.TYPE_6__, %struct.ivtv* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"Decoder poll\0A\00", align 1
@IVTV_F_I_EV_VSYNC_ENABLED = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC = common dso_local global i32 0, align 4
@IVTV_F_I_EV_DEC_STOPPED = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_dec_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ivtv_open_id*, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ivtv_open_id* @fh2id(i32 %11)
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %5, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 2
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %6, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 1
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %17, align 8
  %19 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %20 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i64 %21
  store %struct.ivtv_stream* %22, %struct.ivtv_stream** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = call i32 @IVTV_DEBUG_HI_FILE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %25 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %2
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %34 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @poll_wait(%struct.file* %32, i32* %37, i32* %38)
  %40 = load i32, i32* @IVTV_F_I_EV_VSYNC_ENABLED, align 4
  %41 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 0
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %45 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %44, i32 0, i32 1
  %46 = call i64 @v4l2_event_pending(%struct.TYPE_6__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* @POLLPRI, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %31
  br label %75

51:                                               ; preds = %2
  %52 = load %struct.file*, %struct.file** %3, align 8
  %53 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %54 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %53, i32 0, i32 1
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @poll_wait(%struct.file* %52, i32* %54, i32* %55)
  %57 = load i32, i32* @IVTV_F_I_EV_VSYNC_ENABLED, align 4
  %58 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @IVTV_F_I_EV_VSYNC, align 4
  %62 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 0
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @IVTV_F_I_EV_DEC_STOPPED, align 4
  %68 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %69 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %51
  %73 = load i32, i32* @POLLPRI, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %66
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %77 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @POLLOUT, align 4
  %83 = load i32, i32* @POLLWRNORM, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @IVTV_DEBUG_HI_FILE(i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @v4l2_event_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
