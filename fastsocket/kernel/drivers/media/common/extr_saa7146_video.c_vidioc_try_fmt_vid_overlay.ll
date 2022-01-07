; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_try_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_try_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_7__*, i32*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no fb base set.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"no fb fmt set.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"min width/height. (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"clipcount too big.\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"no known field mode '%d'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.v4l2_window*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.saa7146_fh*
  %16 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  store %struct.saa7146_dev* %17, %struct.saa7146_dev** %8, align 8
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %19, align 8
  store %struct.saa7146_vv* %20, %struct.saa7146_vv** %9, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.v4l2_window* %23, %struct.v4l2_window** %10, align 8
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %25 = bitcast %struct.saa7146_dev* %24 to i8*
  %26 = call i32 @DEB_EE(i8* %25)
  %27 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %28 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* null, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = call i32 @DEB_D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %148

36:                                               ; preds = %3
  %37 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %38 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* null, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 @DEB_D(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %148

45:                                               ; preds = %36
  %46 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %47 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 48
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %53 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 32
  br i1 %56, label %57, label %71

57:                                               ; preds = %51, %45
  %58 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %63 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @DEB_D(i8* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %148

71:                                               ; preds = %51
  %72 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 16
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = call i32 @DEB_D(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %148

80:                                               ; preds = %71
  %81 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %85 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %90 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %80
  %98 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sdiv i32 %102, 2
  %104 = icmp sgt i32 %101, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 129, i32 128
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %97, %80
  %108 = load i32, i32* %11, align 4
  switch i32 %108, label %113 [
    i32 128, label %109
    i32 130, label %109
    i32 131, label %109
    i32 129, label %112
  ]

109:                                              ; preds = %107, %107, %107
  %110 = load i32, i32* %13, align 4
  %111 = sdiv i32 %110, 2
  store i32 %111, i32* %13, align 4
  br label %120

112:                                              ; preds = %107
  br label %120

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  %115 = zext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @DEB_D(i8* %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %148

120:                                              ; preds = %112, %109
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %123 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %125 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %133 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %120
  %136 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %137 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %145 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %135
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %113, %76, %57, %41, %32
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @DEB_D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
