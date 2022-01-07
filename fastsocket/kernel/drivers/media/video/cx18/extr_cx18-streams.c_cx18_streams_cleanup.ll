; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_streams_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_streams_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.video_device*, i32* }
%struct.video_device = type { i32 }

@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_streams_cleanup(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %125, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %128

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CX18_ENC_STREAM_TYPE_TS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.cx18*, %struct.cx18** %3, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.cx18*, %struct.cx18** %3, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = call i32 @cx18_dvb_unregister(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load %struct.cx18*, %struct.cx18** %3, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.cx18*, %struct.cx18** %3, align 8
  %47 = getelementptr inbounds %struct.cx18, %struct.cx18* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.cx18*, %struct.cx18** %3, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = call i32 @cx18_stream_free(%struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %36, %15
  br label %125

61:                                               ; preds = %11
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CX18_ENC_STREAM_TYPE_IDX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.cx18*, %struct.cx18** %3, align 8
  %67 = getelementptr inbounds %struct.cx18, %struct.cx18* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %65
  %75 = load %struct.cx18*, %struct.cx18** %3, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load %struct.cx18*, %struct.cx18** %3, align 8
  %82 = getelementptr inbounds %struct.cx18, %struct.cx18* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = call i32 @cx18_stream_free(%struct.TYPE_3__* %86)
  br label %88

88:                                               ; preds = %74, %65
  br label %125

89:                                               ; preds = %61
  %90 = load %struct.cx18*, %struct.cx18** %3, align 8
  %91 = getelementptr inbounds %struct.cx18, %struct.cx18* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.video_device*, %struct.video_device** %96, align 8
  store %struct.video_device* %97, %struct.video_device** %5, align 8
  %98 = load %struct.cx18*, %struct.cx18** %3, align 8
  %99 = getelementptr inbounds %struct.cx18, %struct.cx18* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %104, align 8
  %105 = load %struct.video_device*, %struct.video_device** %5, align 8
  %106 = icmp eq %struct.video_device* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %89
  br label %125

108:                                              ; preds = %89
  %109 = load %struct.cx18*, %struct.cx18** %3, align 8
  %110 = getelementptr inbounds %struct.cx18, %struct.cx18* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = call i32 @cx18_stream_free(%struct.TYPE_3__* %114)
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.video_device*, %struct.video_device** %5, align 8
  %120 = call i32 @video_unregister_device(%struct.video_device* %119)
  br label %124

121:                                              ; preds = %108
  %122 = load %struct.video_device*, %struct.video_device** %5, align 8
  %123 = call i32 @video_device_release(%struct.video_device* %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %107, %88, %60
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %7

128:                                              ; preds = %7
  ret void
}

declare dso_local i32 @cx18_dvb_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cx18_stream_free(%struct.TYPE_3__*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
