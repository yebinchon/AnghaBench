; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_video_init1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_video_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.saa7134_dev = type { i32, i64, %struct.TYPE_5__, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.saa7134_dev*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@gbuffers = common dso_local global i32 0, align 4
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@gbufsize = common dso_local global i32 0, align 4
@gbufsize_max = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_PRIVATE_INVERT = common dso_local global i32 0, align 4
@V4L2_CID_PRIVATE_AUTOMUTE = common dso_local global i32 0, align 4
@TDA9887_AUTOMUTE = common dso_local global i32 0, align 4
@saa7134_buffer_timeout = common dso_local global i32 0, align 4
@saa7134_boards = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_video_init1(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load i32, i32* @gbuffers, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @gbuffers, align 4
  %7 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  store i32 2, i32* @gbuffers, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, i32* @gbufsize, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @gbufsize, align 4
  %15 = load i32, i32* @gbufsize_max, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %10
  %18 = load i32, i32* @gbufsize_max, align 4
  store i32 %18, i32* @gbufsize, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32, i32* @gbufsize, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @PAGE_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* @gbufsize, align 4
  %26 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %27 = call %struct.TYPE_8__* @ctrl_by_id(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 11
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %33 = call %struct.TYPE_8__* @ctrl_by_id(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %36, i32 0, i32 10
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @V4L2_CID_HUE, align 4
  %39 = call %struct.TYPE_8__* @ctrl_by_id(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 9
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %45 = call %struct.TYPE_8__* @ctrl_by_id(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %49 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %48, i32 0, i32 8
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %51 = call %struct.TYPE_8__* @ctrl_by_id(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %55 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %54, i32 0, i32 7
  store i64 %53, i64* %55, align 8
  %56 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %57 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @V4L2_CID_PRIVATE_INVERT, align 4
  %59 = call %struct.TYPE_8__* @ctrl_by_id(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %63 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @V4L2_CID_PRIVATE_AUTOMUTE, align 4
  %65 = call %struct.TYPE_8__* @ctrl_by_id(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %69 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %71 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %19
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @TDA9887_AUTOMUTE, align 4
  %81 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %82 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %74, %19
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %87 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %89 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %93 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = call i32 @init_timer(%struct.TYPE_7__* %94)
  %96 = load i32, i32* @saa7134_buffer_timeout, align 4
  %97 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %98 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  %101 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %102 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %101, i32 0, i32 2
  %103 = ptrtoint %struct.TYPE_5__* %102 to i64
  %104 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %105 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i64 %103, i64* %107, align 8
  %108 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %109 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %110 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store %struct.saa7134_dev* %108, %struct.saa7134_dev** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @saa7134_boards, align 8
  %113 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %114 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %85
  %121 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %122 = call i32 @saa7134_videoport_init(%struct.saa7134_dev* %121)
  br label %123

123:                                              ; preds = %120, %85
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @ctrl_by_id(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @saa7134_videoport_init(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
