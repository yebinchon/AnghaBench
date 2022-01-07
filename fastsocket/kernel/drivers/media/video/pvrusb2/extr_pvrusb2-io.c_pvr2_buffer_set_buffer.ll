; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_set_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i64, i32, %struct.pvr2_stream*, i8* }
%struct.pvr2_stream = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pvr2_buffer_state_idle = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@PVR2_TRACE_BUF_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"/*---TRACE_FLOW---*/ bufferPool     %8s cap cap=%07d cnt=%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_buffer_set_buffer(%struct.pvr2_buffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %12 = icmp ne %struct.pvr2_buffer* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %17, i32 0, i32 2
  %19 = load %struct.pvr2_stream*, %struct.pvr2_stream** %18, align 8
  store %struct.pvr2_stream* %19, %struct.pvr2_stream** %10, align 8
  %20 = load %struct.pvr2_stream*, %struct.pvr2_stream** %10, align 8
  %21 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  br label %23

23:                                               ; preds = %16
  %24 = load %struct.pvr2_stream*, %struct.pvr2_stream** %10, align 8
  %25 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %24, i32 0, i32 2
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @pvr2_buffer_state_idle, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %75

36:                                               ; preds = %23
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %43, i32 0, i32 2
  %45 = load %struct.pvr2_stream*, %struct.pvr2_stream** %44, align 8
  %46 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %55, i32 0, i32 2
  %57 = load %struct.pvr2_stream*, %struct.pvr2_stream** %56, align 8
  %58 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @PVR2_TRACE_BUF_FLOW, align 4
  %62 = load i64, i64* @pvr2_buffer_state_idle, align 8
  %63 = call i32 @pvr2_buffer_state_decode(i64 %62)
  %64 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %64, i32 0, i32 2
  %66 = load %struct.pvr2_stream*, %struct.pvr2_stream** %65, align 8
  %67 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %70 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %69, i32 0, i32 2
  %71 = load %struct.pvr2_stream*, %struct.pvr2_stream** %70, align 8
  %72 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pvr2_trace(i32 %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %36, %33
  %76 = load %struct.pvr2_stream*, %struct.pvr2_stream** %10, align 8
  %77 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %76, i32 0, i32 2
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %75
  %81 = load %struct.pvr2_stream*, %struct.pvr2_stream** %10, align 8
  %82 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pvr2_buffer_state_decode(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
