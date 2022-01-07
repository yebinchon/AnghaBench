; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stream_configure_mdls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stream_configure_mdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@vbi_active_samples = common dso_local global i32 0, align 4
@vbi_hblank_samples_60Hz = common dso_local global i32 0, align 4
@vbi_hblank_samples_50Hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*)* @cx18_stream_configure_mdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_stream_configure_mdls(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %3 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %4 = call i32 @cx18_unload_queues(%struct.cx18_stream* %3)
  %5 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %6 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %83 [
    i32 128, label %8
    i32 129, label %43
  ]

8:                                                ; preds = %1
  %9 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %10 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 720, %14
  %16 = mul nsw i32 %15, 3
  %17 = sdiv i32 %16, 2
  %18 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %19 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %21 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %24 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %8
  %38 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %39 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %8
  br label %95

43:                                               ; preds = %1
  %44 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %45 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %47 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @cx18_raw_vbi(%struct.TYPE_4__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %43
  %52 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %53 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 12, i32 18
  %60 = mul nsw i32 %59, 2
  %61 = load i32, i32* @vbi_active_samples, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %64 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %82

65:                                               ; preds = %43
  %66 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %67 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @vbi_hblank_samples_60Hz, align 4
  %74 = mul nsw i32 36, %73
  br label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @vbi_hblank_samples_50Hz, align 4
  %77 = mul nsw i32 44, %76
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  %80 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %81 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %51
  br label %95

83:                                               ; preds = %1
  %84 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %85 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %87 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %90 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %88, %91
  %93 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %94 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %83, %82, %42
  %96 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %97 = call i32 @cx18_load_queues(%struct.cx18_stream* %96)
  ret void
}

declare dso_local i32 @cx18_unload_queues(%struct.cx18_stream*) #1

declare dso_local i32 @cx18_raw_vbi(%struct.TYPE_4__*) #1

declare dso_local i32 @cx18_load_queues(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
