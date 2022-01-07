; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_copy_video_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_copy_video_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_dmaqueue = type { i32, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cx231xx_copy_video_line(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_dmaqueue*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cx231xx_buffer*, align 8
  %14 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %14, align 8
  %20 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %21 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %27 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %28 = call i32 @cx231xx_reset_video_buffer(%struct.cx231xx* %26, %struct.cx231xx_dmaqueue* %27)
  br label %29

29:                                               ; preds = %25, %5
  %30 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %38, align 8
  store %struct.cx231xx_buffer* %39, %struct.cx231xx_buffer** %13, align 8
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %44, align 8
  store %struct.cx231xx_buffer* %45, %struct.cx231xx_buffer** %13, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %49 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %51 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %56, %46
  %59 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %60 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %63 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %69 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %73 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 1
  %78 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %79 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  store i64 0, i64* %6, align 8
  br label %149

80:                                               ; preds = %58
  %81 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %82 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %81, i32 0, i32 4
  store i32 1, i32* %82, align 8
  %83 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %13, align 8
  %84 = icmp ne %struct.cx231xx_buffer* %83, null
  br i1 %84, label %100, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %88 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %92 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 1
  %97 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %98 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* %6, align 8
  br label %149

100:                                              ; preds = %80
  %101 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %102 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @cx231xx_do_copy(%struct.cx231xx* %101, %struct.cx231xx_dmaqueue* %102, i32* %103, i64 %104)
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %108 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %113 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %117 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %100
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %123 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %125 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %129 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %128, i32 0, i32 4
  store i32 0, i32* %129, align 8
  %130 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %131 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %132 = call i64 @cx231xx_is_buffer_done(%struct.cx231xx* %130, %struct.cx231xx_dmaqueue* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %120
  %135 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %13, align 8
  %136 = icmp ne %struct.cx231xx_buffer* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %139 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %140 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %13, align 8
  %141 = call i32 @buffer_filled(%struct.cx231xx* %138, %struct.cx231xx_dmaqueue* %139, %struct.cx231xx_buffer* %140)
  %142 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %143 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %142, i32 0, i32 5
  store i64 0, i64* %143, align 8
  store %struct.cx231xx_buffer* null, %struct.cx231xx_buffer** %13, align 8
  %144 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %145 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %137, %134, %120
  br label %147

147:                                              ; preds = %146, %100
  %148 = load i64, i64* %12, align 8
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %147, %85, %66
  %150 = load i64, i64* %6, align 8
  ret i64 %150
}

declare dso_local i32 @cx231xx_reset_video_buffer(%struct.cx231xx*, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @cx231xx_do_copy(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32*, i64) #1

declare dso_local i64 @cx231xx_is_buffer_done(%struct.cx231xx*, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @buffer_filled(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
