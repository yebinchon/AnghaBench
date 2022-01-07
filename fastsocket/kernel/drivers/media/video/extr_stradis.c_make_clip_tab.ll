; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_make_clip_tab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_make_clip_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.video_clip = type { i32, i32, i32, i32 }

@VIDEO_CLIPMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*, %struct.video_clip*, i32)* @make_clip_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_clip_tab(%struct.saa7146* %0, %struct.video_clip* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146*, align 8
  %5 = alloca %struct.video_clip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.saa7146* %0, %struct.saa7146** %4, align 8
  store %struct.video_clip* %1, %struct.video_clip** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %12 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %15 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = icmp sgt i32 %17, 1023
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1023, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %22 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = icmp sgt i32 %24, 640
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 639, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @VIDEO_CLIPMAP_SIZE, align 4
  %33 = call i32 @memset(i32* %31, i32 0, i32 %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %65, %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.video_clip*, %struct.video_clip** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %40, i64 %42
  %44 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.video_clip*, %struct.video_clip** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %46, i64 %48
  %50 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.video_clip*, %struct.video_clip** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %52, i64 %54
  %56 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.video_clip*, %struct.video_clip** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %58, i64 %60
  %62 = getelementptr inbounds %struct.video_clip, %struct.video_clip* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clip_draw_rectangle(i32* %39, i32 %45, i32 %51, i32 %57, i32 %63)
  br label %65

65:                                               ; preds = %38
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %34

68:                                               ; preds = %34
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %72 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %78 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %69
  %83 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %84 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %88 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %86, %90
  br label %94

92:                                               ; preds = %69
  %93 = load i32, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %82
  %95 = phi i32 [ %91, %82 ], [ %93, %92 ]
  %96 = call i32 @clip_draw_rectangle(i32* %70, i32 %95, i32 0, i32 1024, i32 768)
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %99 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %105 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %103, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %94
  %110 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %111 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %115 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %113, %117
  br label %121

119:                                              ; preds = %94
  %120 = load i32, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %109
  %122 = phi i32 [ %118, %109 ], [ %120, %119 ]
  %123 = call i32 @clip_draw_rectangle(i32* %97, i32 0, i32 %122, i32 1024, i32 768)
  %124 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %125 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %132 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 0, %134
  %136 = call i32 @clip_draw_rectangle(i32* %130, i32 0, i32 0, i32 %135, i32 768)
  br label %137

137:                                              ; preds = %129, %121
  %138 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %139 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %146 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 0, %148
  %150 = call i32 @clip_draw_rectangle(i32* %144, i32 0, i32 0, i32 1024, i32 %149)
  br label %151

151:                                              ; preds = %143, %137
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @clip_draw_rectangle(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
