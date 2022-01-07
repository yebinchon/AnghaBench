; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_get_video_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_get_video_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.cx231xx_dmaqueue = type { i32 }

@EAV_ACTIVE_VIDEO_FIELD1 = common dso_local global i32 0, align 4
@EAV_ACTIVE_VIDEO_FIELD2 = common dso_local global i32 0, align 4
@EAV_VBLANK_FIELD1 = common dso_local global i32 0, align 4
@EAV_VBLANK_FIELD2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_get_video_line(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_dmaqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %105 [
    i32 129, label %15
    i32 128, label %60
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EAV_ACTIVE_VIDEO_FIELD1, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EAV_ACTIVE_VIDEO_FIELD2, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EAV_VBLANK_FIELD1, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @EAV_VBLANK_FIELD2, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %45, %39, %33
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %116

59:                                               ; preds = %51, %28, %23, %18, %15
  store i32 1, i32* %13, align 4
  br label %105

60:                                               ; preds = %5
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %61, 3
  br i1 %62, label %63, label %104

63:                                               ; preds = %60
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %104

68:                                               ; preds = %63
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %73
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EAV_ACTIVE_VIDEO_FIELD1, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %102, label %84

84:                                               ; preds = %78
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EAV_ACTIVE_VIDEO_FIELD2, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EAV_VBLANK_FIELD1, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @EAV_VBLANK_FIELD2, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96, %90, %84, %78
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %116

104:                                              ; preds = %96, %73, %68, %63, %60
  store i32 2, i32* %13, align 4
  br label %105

105:                                              ; preds = %5, %104, %59
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %108 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %110 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @cx231xx_copy_video_line(%struct.cx231xx* %109, %struct.cx231xx_dmaqueue* %110, i32* %111, i32 %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %105, %102, %57
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @cx231xx_copy_video_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
