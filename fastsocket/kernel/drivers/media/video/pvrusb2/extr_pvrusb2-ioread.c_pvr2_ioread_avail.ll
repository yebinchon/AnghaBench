; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32, i32, i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BUFFER_COUNT = common dso_local global i32 0, align 4
@PVR2_TRACE_DATA_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"/*---TRACE_READ---*/ data is %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pending\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ioread_avail(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_ioread*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %3, align 8
  %5 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %83

12:                                               ; preds = %1
  %13 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %19 = call i32 @pvr2_ioread_filter(%struct.pvr2_ioread* %18)
  %20 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %21 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %12
  store i32 0, i32* %4, align 4
  %29 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %30 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %35 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pvr2_stream_get_ready_count(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %33
  br label %55

43:                                               ; preds = %28
  %44 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %45 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pvr2_stream_get_ready_count(i32 %46)
  %48 = load i32, i32* @BUFFER_COUNT, align 4
  %49 = sdiv i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %43
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %57 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %55
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %72 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %74 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %80 = call i32 @pvr2_trace(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %67, %55
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %24, %9
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @pvr2_ioread_filter(%struct.pvr2_ioread*) #1

declare dso_local i32 @pvr2_stream_get_ready_count(i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
