; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_g_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_g_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32**, i32 }

@saa711x_g_sliced_fmt.lcr2vbi = internal global <{ [8 x i8*], [8 x i8*] }> <{ [8 x i8*] [i8* null, i8* inttoptr (i64 130 to i8*), i8* null, i8* null, i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 128 to i8*), i8* null, i8* inttoptr (i64 129 to i8*)], [8 x i8*] zeroinitializer }>, align 16
@R_80_GLOBAL_CNTL_1 = common dso_local global i64 0, align 8
@R_41_LCR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* @saa711x_g_sliced_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_g_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %5, align 8
  %8 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %9 = call i32 @memset(%struct.v4l2_sliced_vbi_format* %8, i32 0, i32 16)
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load i64, i64* @R_80_GLOBAL_CNTL_1, align 8
  %12 = call i32 @saa711x_read(%struct.v4l2_subdev* %10, i64 %11)
  %13 = and i32 %12, 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %17

17:                                               ; preds = %79, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 23
  br i1 %19, label %20, label %82

20:                                               ; preds = %17
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @R_41_LCR_BASE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @saa711x_read(%struct.v4l2_subdev* %21, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ [8 x i8*], [8 x i8*] }>* @saa711x_g_sliced_fmt.lcr2vbi to [16 x i8*]*), i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %33, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ [8 x i8*], [8 x i8*] }>* @saa711x_g_sliced_fmt.lcr2vbi to [16 x i8*]*), i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  %56 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %64, %73
  %75 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %20
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %17

82:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @memset(%struct.v4l2_sliced_vbi_format*, i32, i32) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
