; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_set_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_set_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.poseidon = type { i32, %struct.vbi_data, %struct.video_data }
%struct.vbi_data = type { i32 }
%struct.video_data = type { %struct.running_context }
%struct.running_context = type { i32, %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@POSEIDON_TVNORMS = common dso_local global i64 0, align 8
@poseidon_tvnorms = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"name : %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIDEO_STD_SEL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L_NTSC_VBI_FRAMESIZE = common dso_local global i32 0, align 4
@V4L_PAL_VBI_FRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*, i32*)* @set_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_std(%struct.poseidon* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.poseidon*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.video_data*, align 8
  %7 = alloca %struct.vbi_data*, align 8
  %8 = alloca %struct.running_context*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %16 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %15, i32 0, i32 2
  store %struct.video_data* %16, %struct.video_data** %6, align 8
  %17 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %18 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %17, i32 0, i32 1
  store %struct.vbi_data* %18, %struct.vbi_data** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @POSEIDON_TVNORMS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @poseidon_tvnorms, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @poseidon_tvnorms, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @poseidon_tvnorms, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %52

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %119

52:                                               ; preds = %33
  %53 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %54 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %57 = load i32, i32* @VIDEO_STD_SEL, align 4
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @send_set_req(%struct.poseidon* %56, i32 %57, i64 %58, i64* %12)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %52
  br label %113

66:                                               ; preds = %62
  %67 = load %struct.video_data*, %struct.video_data** %6, align 8
  %68 = getelementptr inbounds %struct.video_data, %struct.video_data* %67, i32 0, i32 0
  store %struct.running_context* %68, %struct.running_context** %8, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @poseidon_tvnorms, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.running_context*, %struct.running_context** %8, align 8
  %75 = getelementptr inbounds %struct.running_context, %struct.running_context* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.running_context*, %struct.running_context** %8, align 8
  %77 = getelementptr inbounds %struct.running_context, %struct.running_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @V4L2_STD_525_60, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load i32, i32* @V4L_NTSC_VBI_FRAMESIZE, align 4
  %84 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %85 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  store i32 480, i32* %14, align 4
  br label %90

86:                                               ; preds = %66
  %87 = load i32, i32* @V4L_PAL_VBI_FRAMESIZE, align 4
  %88 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %89 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 576, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.running_context*, %struct.running_context** %8, align 8
  %92 = getelementptr inbounds %struct.running_context, %struct.running_context* %91, i32 0, i32 1
  store %struct.v4l2_pix_format* %92, %struct.v4l2_pix_format** %9, align 8
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  %109 = mul nsw i32 %108, 2
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %98, %90
  br label %113

113:                                              ; preds = %112, %65
  %114 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %115 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i64, i64* %11, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %113, %49
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @log(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @send_set_req(%struct.poseidon*, i32, i64, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
