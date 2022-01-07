; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.saa7134_format = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @saa7134_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca %struct.saa7134_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %15, %struct.saa7134_fh** %8, align 8
  %16 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %17 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %16, i32 0, i32 0
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %17, align 8
  store %struct.saa7134_dev* %18, %struct.saa7134_dev** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.saa7134_format* @format_by_fourcc(i32 %23)
  store %struct.saa7134_format* %24, %struct.saa7134_format** %10, align 8
  %25 = load %struct.saa7134_format*, %struct.saa7134_format** %10, align 8
  %26 = icmp eq %struct.saa7134_format* null, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %172

30:                                               ; preds = %3
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @min(i32 %40, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @min(i32 %50, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %30
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = udiv i32 %65, 2
  %67 = icmp ugt i32 %64, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 129, i32 130
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %59, %30
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %76 [
    i32 128, label %72
    i32 130, label %72
    i32 129, label %75
  ]

72:                                               ; preds = %70, %70
  %73 = load i32, i32* %13, align 4
  %74 = udiv i32 %73, 2
  store i32 %74, i32* %13, align 4
  br label %79

75:                                               ; preds = %70
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %172

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 48
  br i1 %90, label %91, label %96

91:                                               ; preds = %79
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 48, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %79
  %97 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %101, 32
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 32, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %108
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ugt i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %122
  %137 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, -4
  store i32 %142, i32* %140, align 4
  %143 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.saa7134_format*, %struct.saa7134_format** %10, align 8
  %149 = getelementptr inbounds %struct.saa7134_format, %struct.saa7134_format* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = ashr i32 %151, 3
  %153 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  store i32 %152, i32* %156, align 4
  %157 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %163 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = mul i32 %161, %166
  %168 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %169 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  store i32 %167, i32* %171, align 4
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %136, %76, %27
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.saa7134_format* @format_by_fourcc(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
