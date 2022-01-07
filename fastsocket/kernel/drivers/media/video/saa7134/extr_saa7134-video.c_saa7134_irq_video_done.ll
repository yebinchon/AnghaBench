; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_irq_video_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_irq_video_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@VIDEOBUF_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_irq_video_done(%struct.saa7134_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %86

14:                                               ; preds = %2
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %14
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, 16
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %91

39:                                               ; preds = %29
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %91

48:                                               ; preds = %39
  br label %71

49:                                               ; preds = %14
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i64, i64* %4, align 8
  %55 = and i64 %54, 16
  %56 = icmp ne i64 %55, 16
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %91

58:                                               ; preds = %53
  br label %70

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = and i64 %64, 16
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %91

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %73 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i64 %74, i64* %80, align 8
  %81 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %82 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %83 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %82, i32 0, i32 1
  %84 = load i32, i32* @VIDEOBUF_DONE, align 4
  %85 = call i32 @saa7134_buffer_finish(%struct.saa7134_dev* %81, %struct.TYPE_7__* %83, i32 %84)
  br label %86

86:                                               ; preds = %71, %2
  %87 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %88 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %89 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %88, i32 0, i32 1
  %90 = call i32 @saa7134_buffer_next(%struct.saa7134_dev* %87, %struct.TYPE_7__* %89)
  br label %91

91:                                               ; preds = %86, %67, %57, %47, %33
  %92 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %93 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa7134_buffer_finish(%struct.saa7134_dev*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @saa7134_buffer_next(%struct.saa7134_dev*, %struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
