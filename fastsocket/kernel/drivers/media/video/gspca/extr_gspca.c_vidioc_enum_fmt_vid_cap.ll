; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32*, i32 }
%struct.gspca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vidioc_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i64], align 16
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.gspca_dev*
  store %struct.gspca_dev* %14, %struct.gspca_dev** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %72, %3
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %34
  store i64 %32, i64* %35, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %47, %23
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %36

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %73

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i64* %65)
  %67 = icmp sge i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %136

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %50
  br label %19

73:                                               ; preds = %60, %19
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %136

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @gspca_is_compressed(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i32, i32* @V4L2_FMT_FLAG_COMPRESSED, align 4
  %95 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %79
  %98 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 255
  %102 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %110, i32* %114, align 4
  %115 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32 %119, i32* %123, align 4
  %124 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 24
  %128 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 %127, i32* %131, align 4
  %132 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 0, i32* %135, align 4
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %97, %76, %68
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @gspca_is_compressed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
