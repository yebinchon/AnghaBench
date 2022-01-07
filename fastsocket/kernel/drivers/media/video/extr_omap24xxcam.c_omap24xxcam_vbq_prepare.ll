; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.omap24xxcam_fh* }
%struct.omap24xxcam_fh = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.videobuf_buffer = type { i64, i64, i64, i32, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @omap24xxcam_vbq_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_vbq_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap24xxcam_fh*, align 8
  %9 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %11 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %10, i32 0, i32 0
  %12 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %11, align 8
  store %struct.omap24xxcam_fh* %12, %struct.omap24xxcam_fh** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %26
  br label %71

37:                                               ; preds = %3
  %38 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %45 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %54 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %55 = call i32 @omap24xxcam_vbq_release(%struct.videobuf_queue* %53, %struct.videobuf_buffer* %54)
  %56 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %57 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %52, %43
  br label %70

63:                                               ; preds = %37
  %64 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %65 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %62
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %126

76:                                               ; preds = %71
  %77 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %78 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %84 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %91 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %93 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %76
  %98 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %105 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %106 = call i32 @videobuf_to_dma(%struct.videobuf_buffer* %105)
  %107 = call i32 @omap24xxcam_dma_iolock(%struct.videobuf_queue* %104, i32 %106)
  store i32 %107, i32* %9, align 4
  br label %112

108:                                              ; preds = %97
  %109 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %110 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %111 = call i32 @videobuf_iolock(%struct.videobuf_queue* %109, %struct.videobuf_buffer* %110, i32* null)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112, %76
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %118 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %119 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %124

120:                                              ; preds = %113
  %121 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %122 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %123 = call i32 @omap24xxcam_vbq_release(%struct.videobuf_queue* %121, %struct.videobuf_buffer* %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %74
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @omap24xxcam_vbq_release(%struct.videobuf_queue*, %struct.videobuf_buffer*) #1

declare dso_local i32 @omap24xxcam_dma_iolock(%struct.videobuf_queue*, i32) #1

declare dso_local i32 @videobuf_to_dma(%struct.videobuf_buffer*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.videobuf_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
