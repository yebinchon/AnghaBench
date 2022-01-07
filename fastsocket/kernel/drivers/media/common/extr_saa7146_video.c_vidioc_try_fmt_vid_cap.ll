; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saa7146_format = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [44 x i8] c"V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no known field mode '%d'.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"w:%d, h:%d, bytesperline:%d, sizeimage:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.saa7146_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.saa7146_fh*
  %17 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %16, i32 0, i32 0
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %17, align 8
  store %struct.saa7146_dev* %18, %struct.saa7146_dev** %8, align 8
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 0
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %20, align 8
  store %struct.saa7146_vv* %21, %struct.saa7146_vv** %9, align 8
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @DEB_EE(i8* %23)
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %25, i32 %30)
  store %struct.saa7146_format* %31, %struct.saa7146_format** %10, align 8
  %32 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %33 = icmp eq %struct.saa7146_format* null, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %205

37:                                               ; preds = %3
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %49 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %37
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %62, 2
  %64 = icmp sgt i32 %61, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 129, i32 130
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %56, %37
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %82 [
    i32 131, label %69
    i32 128, label %74
    i32 130, label %74
    i32 129, label %79
  ]

69:                                               ; preds = %67
  %70 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %71 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %70, i32 0, i32 0
  store i32 128, i32* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %13, align 4
  br label %89

74:                                               ; preds = %67, %67
  %75 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %76 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %75, i32 0, i32 0
  store i32 129, i32* %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %13, align 4
  br label %89

79:                                               ; preds = %67
  %80 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %81 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %80, i32 0, i32 0
  store i32 129, i32* %81, align 8
  br label %89

82:                                               ; preds = %67
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @DEB_D(i8* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %205

89:                                               ; preds = %79, %74, %69
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %89
  %109 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %108
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %129 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = sdiv i32 %131, 8
  store i32 %132, i32* %14, align 4
  %133 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %122
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %143 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %122
  %147 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = mul nsw i32 2, %152
  %154 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %155 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %153, %156
  %158 = sdiv i32 %157, 8
  %159 = icmp sgt i32 %151, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %146
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %163 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %146
  %167 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %173 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %171, %176
  %178 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  store i32 %177, i32* %181, align 4
  %182 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %183 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %188 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %193 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %198 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @DEB_D(i8* %203)
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %166, %82, %34
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
