; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_g_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_g_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_sliced_vbi_cap = type { i64, i32, i32**, i64* }
%struct.cx18 = type { i64 }
%struct.cx18_open_id = type { %struct.cx18* }

@V4L2_SLICED_VBI_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_VBI_525 = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_sliced_vbi_cap*)* @cx18_g_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_sliced_vbi_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_sliced_vbi_cap*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_sliced_vbi_cap* %2, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cx18_open_id*
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 0
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %8, align 8
  %16 = load %struct.cx18*, %struct.cx18** %8, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @V4L2_SLICED_VBI_625, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @V4L2_SLICED_VBI_525, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  %26 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_CAPTURE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %103

34:                                               ; preds = %24
  %35 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %85, %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %81, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 24
  br i1 %43, label %44, label %84

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.cx18*, %struct.cx18** %8, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @valid_service_line(i32 %45, i32 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %53, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %80

69:                                               ; preds = %44
  %70 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %69, %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %41

84:                                               ; preds = %41
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %37

88:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %99, %88
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %89

102:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %31
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @valid_service_line(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
