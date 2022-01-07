; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32, %struct.pvr2_stream*, i32* }
%struct.pvr2_stream = type { i32 }
%struct.pvr2_buffer = type { i32 }

@PVR2_TRACE_START_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_setup (tear-down) id=%p\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_setup (setup) id=%p\00", align 1
@BUFFER_COUNT = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ioread_setup(%struct.pvr2_ioread* %0, %struct.pvr2_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ioread*, align 8
  %5 = alloca %struct.pvr2_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvr2_buffer*, align 8
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %4, align 8
  store %struct.pvr2_stream* %1, %struct.pvr2_stream** %5, align 8
  %9 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %10 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %2
  %13 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %14 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %13, i32 0, i32 1
  %15 = load %struct.pvr2_stream*, %struct.pvr2_stream** %14, align 8
  %16 = icmp ne %struct.pvr2_stream* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i32, i32* @PVR2_TRACE_START_STOP, align 4
  %19 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %20 = call i32 @pvr2_trace(i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.pvr2_ioread* %19)
  %21 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %22 = call i32 @pvr2_ioread_stop(%struct.pvr2_ioread* %21)
  %23 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %24 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %23, i32 0, i32 1
  %25 = load %struct.pvr2_stream*, %struct.pvr2_stream** %24, align 8
  %26 = call i32 @pvr2_stream_kill(%struct.pvr2_stream* %25)
  %27 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %28 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %27, i32 0, i32 1
  %29 = load %struct.pvr2_stream*, %struct.pvr2_stream** %28, align 8
  %30 = call i64 @pvr2_stream_get_buffer_count(%struct.pvr2_stream* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %34 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %33, i32 0, i32 1
  %35 = load %struct.pvr2_stream*, %struct.pvr2_stream** %34, align 8
  %36 = call i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream* %35, i32 0)
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %39 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %38, i32 0, i32 1
  store %struct.pvr2_stream* null, %struct.pvr2_stream** %39, align 8
  br label %40

40:                                               ; preds = %37, %12
  %41 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %42 = icmp ne %struct.pvr2_stream* %41, null
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  %44 = load i32, i32* @PVR2_TRACE_START_STOP, align 4
  %45 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %46 = call i32 @pvr2_trace(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_ioread* %45)
  %47 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %48 = call i32 @pvr2_stream_kill(%struct.pvr2_stream* %47)
  %49 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %50 = load i32, i32* @BUFFER_COUNT, align 4
  %51 = call i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %56 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %90

59:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @BUFFER_COUNT, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.pvr2_buffer* @pvr2_stream_get_buffer(%struct.pvr2_stream* %65, i32 %66)
  store %struct.pvr2_buffer* %67, %struct.pvr2_buffer** %8, align 8
  %68 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %8, align 8
  %69 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %70 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BUFFER_SIZE, align 4
  %77 = call i32 @pvr2_buffer_set_buffer(%struct.pvr2_buffer* %68, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %83 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %84 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %83, i32 0, i32 1
  store %struct.pvr2_stream* %82, %struct.pvr2_stream** %84, align 8
  br label %85

85:                                               ; preds = %81, %40
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %88 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %54
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_ioread*) #1

declare dso_local i32 @pvr2_ioread_stop(%struct.pvr2_ioread*) #1

declare dso_local i32 @pvr2_stream_kill(%struct.pvr2_stream*) #1

declare dso_local i64 @pvr2_stream_get_buffer_count(%struct.pvr2_stream*) #1

declare dso_local i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.pvr2_buffer* @pvr2_stream_get_buffer(%struct.pvr2_stream*, i32) #1

declare dso_local i32 @pvr2_buffer_set_buffer(%struct.pvr2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
