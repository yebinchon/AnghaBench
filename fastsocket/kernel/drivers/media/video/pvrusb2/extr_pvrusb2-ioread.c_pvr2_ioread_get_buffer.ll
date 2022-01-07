; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i64, i64, i32*, i32**, i32*, i32 }

@PVR2_TRACE_DATA_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_read id=%p queue_error=%d\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"/*---TRACE_READ---*/ pvr2_ioread_read id=%p buffer_error=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ioread*)* @pvr2_ioread_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_ioread_get_buffer(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_ioread*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %3, align 8
  br label %5

5:                                                ; preds = %79, %78, %1
  %6 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %93

13:                                               ; preds = %5
  %14 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %15 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @pvr2_buffer_queue(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %27 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pvr2_trace(i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.pvr2_ioread* %27, i32 %28)
  %30 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %31 = call i32 @pvr2_ioread_stop(%struct.pvr2_ioread* %30)
  store i32 0, i32* %2, align 4
  br label %94

32:                                               ; preds = %18
  %33 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %34 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %36 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %38 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %13
  %42 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @pvr2_stream_get_ready_buffer(i32 %44)
  %46 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %49 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %93

53:                                               ; preds = %41
  %54 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %55 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @pvr2_buffer_get_count(i32* %56)
  %58 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %59 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %61 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %53
  %65 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %66 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @pvr2_buffer_get_status(i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %73 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @pvr2_trace(i32 %72, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_ioread* %73, i32 %74)
  %76 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %77 = call i32 @pvr2_ioread_stop(%struct.pvr2_ioread* %76)
  store i32 0, i32* %2, align 4
  br label %94

78:                                               ; preds = %64
  br label %5

79:                                               ; preds = %53
  %80 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %81 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %83 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %82, i32 0, i32 3
  %84 = load i32**, i32*** %83, align 8
  %85 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %86 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @pvr2_buffer_get_id(i32* %87)
  %89 = getelementptr inbounds i32*, i32** %84, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %92 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %91, i32 0, i32 4
  store i32* %90, i32** %92, align 8
  br label %5

93:                                               ; preds = %52, %5
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %71, %25
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @pvr2_buffer_queue(i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_ioread*, i32) #1

declare dso_local i32 @pvr2_ioread_stop(%struct.pvr2_ioread*) #1

declare dso_local i32* @pvr2_stream_get_ready_buffer(i32) #1

declare dso_local i64 @pvr2_buffer_get_count(i32*) #1

declare dso_local i32 @pvr2_buffer_get_status(i32*) #1

declare dso_local i64 @pvr2_buffer_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
