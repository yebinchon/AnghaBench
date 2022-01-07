; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.bttv_format = type { i32 }
%struct.bttv_fh = type { i32, i32, %struct.TYPE_5__, %struct.bttv_format*, %struct.bttv* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bttv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.bttv_format* }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @bttv_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bttv_format*, align 8
  %10 = alloca %struct.bttv_fh*, align 8
  %11 = alloca %struct.bttv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.bttv_fh*
  store %struct.bttv_fh* %16, %struct.bttv_fh** %10, align 8
  %17 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %18 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %17, i32 0, i32 4
  %19 = load %struct.bttv*, %struct.bttv** %18, align 8
  store %struct.bttv* %19, %struct.bttv** %11, align 8
  %20 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bttv_switch_type(%struct.bttv_fh* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %126

29:                                               ; preds = %3
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = call i32 @bttv_try_fmt_vid_cap(%struct.file* %30, i8* %31, %struct.v4l2_format* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 0, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %126

38:                                               ; preds = %29
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %54, i32* %12, i32* %13, i32 %59, i32 -4, i32 2, i32 1, i32 1)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 0, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %38
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %126

65:                                               ; preds = %38
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.bttv_format* @format_by_fourcc(i32 %75)
  store %struct.bttv_format* %76, %struct.bttv_format** %9, align 8
  %77 = load %struct.bttv_format*, %struct.bttv_format** %9, align 8
  %78 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %79 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %78, i32 0, i32 3
  store %struct.bttv_format* %77, %struct.bttv_format** %79, align 8
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %86 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %89 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %90 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %98 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %105 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.bttv_format*, %struct.bttv_format** %9, align 8
  %107 = load %struct.bttv*, %struct.bttv** %11, align 8
  %108 = getelementptr inbounds %struct.bttv, %struct.bttv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store %struct.bttv_format* %106, %struct.bttv_format** %109, align 8
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.bttv*, %struct.bttv** %11, align 8
  %116 = getelementptr inbounds %struct.bttv, %struct.bttv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bttv*, %struct.bttv** %11, align 8
  %124 = getelementptr inbounds %struct.bttv, %struct.bttv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %65, %63, %36, %27
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @bttv_switch_type(%struct.bttv_fh*, i32) #1

declare dso_local i32 @bttv_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.bttv_format* @format_by_fourcc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
