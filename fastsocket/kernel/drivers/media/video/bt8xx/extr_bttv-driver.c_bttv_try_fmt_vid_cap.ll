; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.bttv_format = type { i32 }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_BT = common dso_local global i32 0, align 4
@FORMAT_FLAGS_PLANAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @bttv_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.bttv_format*, align 8
  %9 = alloca %struct.bttv_fh*, align 8
  %10 = alloca %struct.bttv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.bttv_fh*
  store %struct.bttv_fh* %17, %struct.bttv_fh** %9, align 8
  %18 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %19 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %18, i32 0, i32 1
  %20 = load %struct.bttv*, %struct.bttv** %19, align 8
  store %struct.bttv* %20, %struct.bttv** %10, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.bttv_format* @format_by_fourcc(i32 %25)
  store %struct.bttv_format* %26, %struct.bttv_format** %8, align 8
  %27 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %28 = icmp eq %struct.bttv_format* null, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %120

32:                                               ; preds = %3
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %32
  %42 = load %struct.bttv*, %struct.bttv** %10, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %46 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 130, i32 131
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %41, %32
  %68 = load i32, i32* @V4L2_FIELD_SEQ_BT, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 129, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %86 [
    i32 128, label %74
    i32 131, label %74
    i32 132, label %74
    i32 130, label %74
    i32 129, label %75
  ]

74:                                               ; preds = %72, %72, %72, %72
  br label %89

75:                                               ; preds = %72
  %76 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %77 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FORMAT_FLAGS_PLANAR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %120

85:                                               ; preds = %75
  br label %89

86:                                               ; preds = %72
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %120

89:                                               ; preds = %85, %74
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %12, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  %100 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %100, i32* %12, i32* %13, i32 %101, i32 -4, i32 2, i32 1, i32 0)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 0, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %120

107:                                              ; preds = %89
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  %113 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @pix_format_set_size(%struct.TYPE_8__* %115, %struct.bttv_format* %116, i32 %117, i32 %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %107, %105, %86, %82, %29
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.bttv_format* @format_by_fourcc(i32) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pix_format_set_size(%struct.TYPE_8__*, %struct.bttv_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
