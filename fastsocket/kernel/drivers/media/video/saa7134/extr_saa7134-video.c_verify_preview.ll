; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_verify_preview.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_verify_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.v4l2_window*)* @verify_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_preview(%struct.saa7134_dev* %0, %struct.v4l2_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.v4l2_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %5, align 8
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* null, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %110

17:                                               ; preds = %2
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* null, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %17
  %26 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 48
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %110

40:                                               ; preds = %31
  %41 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 2048
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %110

48:                                               ; preds = %40
  %49 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %57 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %68, 2
  %70 = icmp sgt i32 %67, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 129, i32 128
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %63, %48
  %74 = load i32, i32* %6, align 4
  switch i32 %74, label %79 [
    i32 128, label %75
    i32 130, label %75
    i32 129, label %78
  ]

75:                                               ; preds = %73, %73
  %76 = load i32, i32* %8, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %8, align 4
  br label %82

78:                                               ; preds = %73
  br label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %110

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %82
  %98 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %97
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %79, %45, %37, %22, %14
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
