; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i8* }

@V4L2_CTRL_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Agc\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Sharpness\00", align 1
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Picture\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"JPEG quality\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Framerate\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %8 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %182 [
    i32 136, label %11
    i32 133, label %29
    i32 135, label %47
    i32 129, label %65
    i32 137, label %83
    i32 131, label %101
    i32 128, label %101
    i32 130, label %128
    i32 132, label %146
    i32 134, label %164
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 7
  store i8* %12, i8** %14, align 8
  %15 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %19, i32 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 1
  store i32 63, i32* %22, align 4
  %23 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %25, i32 0, i32 3
  store i32 32, i32* %26, align 4
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %27, i32 0, i32 4
  store i32 0, i32* %28, align 8
  br label %185

29:                                               ; preds = %3
  %30 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %37, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %39, i32 0, i32 1
  store i32 63, i32* %40, align 4
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %43, i32 0, i32 3
  store i32 32, i32* %44, align 4
  %45 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %45, i32 0, i32 4
  store i32 0, i32* %46, align 8
  br label %185

47:                                               ; preds = %3
  %48 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %49 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strcpy(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %55, i32 0, i32 5
  store i32 0, i32* %56, align 4
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %57, i32 0, i32 1
  store i32 63, i32* %58, align 4
  %59 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %61, i32 0, i32 3
  store i32 32, i32* %62, align 4
  %63 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %63, i32 0, i32 4
  store i32 0, i32* %64, align 8
  br label %185

65:                                               ; preds = %3
  %66 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %67 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strcpy(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %73, i32 0, i32 5
  store i32 0, i32* %74, align 4
  %75 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %75, i32 0, i32 1
  store i32 63, i32* %76, align 4
  %77 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %79, i32 0, i32 3
  store i32 32, i32* %80, align 4
  %81 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %81, i32 0, i32 4
  store i32 0, i32* %82, align 8
  br label %185

83:                                               ; preds = %3
  %84 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %85 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @strcpy(i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %91, i32 0, i32 5
  store i32 0, i32* %92, align 4
  %93 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %93, i32 0, i32 1
  store i32 63, i32* %94, align 4
  %95 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %97, i32 0, i32 3
  store i32 48, i32* %98, align 4
  %99 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  br label %185

101:                                              ; preds = %3, %3
  %102 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %103 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @strcpy(i32 %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %109, i32 0, i32 5
  store i32 0, i32* %110, align 4
  %111 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %111, i32 0, i32 1
  store i32 63, i32* %112, align 4
  %113 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  %115 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %115, i32 0, i32 3
  store i32 32, i32* %116, align 4
  %117 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  br label %124

122:                                              ; preds = %101
  %123 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  br label %124

124:                                              ; preds = %122, %121
  %125 = phi i32 [ 0, %121 ], [ %123, %122 ]
  %126 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  br label %185

128:                                              ; preds = %3
  %129 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %130 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %131 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @strcpy(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %136, i32 0, i32 5
  store i32 0, i32* %137, align 4
  %138 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %139 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %138, i32 0, i32 1
  store i32 63, i32* %139, align 4
  %140 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %141 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %143 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %142, i32 0, i32 3
  store i32 0, i32* %143, align 4
  %144 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %144, i32 0, i32 4
  store i32 0, i32* %145, align 8
  br label %185

146:                                              ; preds = %3
  %147 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %148 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %149 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %148, i32 0, i32 7
  store i8* %147, i8** %149, align 8
  %150 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @strcpy(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %155 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %154, i32 0, i32 5
  store i32 0, i32* %155, align 4
  %156 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %157 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %156, i32 0, i32 1
  store i32 10, i32* %157, align 4
  %158 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %159 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %161 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %160, i32 0, i32 3
  store i32 8, i32* %161, align 4
  %162 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %163 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %162, i32 0, i32 4
  store i32 0, i32* %163, align 8
  br label %185

164:                                              ; preds = %3
  %165 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %166 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %167 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %166, i32 0, i32 7
  store i8* %165, i8** %167, align 8
  %168 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %169 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @strcpy(i32 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %172 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %173 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %172, i32 0, i32 5
  store i32 0, i32* %173, align 4
  %174 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %175 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %174, i32 0, i32 1
  store i32 31, i32* %175, align 4
  %176 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %177 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %178, i32 0, i32 3
  store i32 0, i32* %179, align 4
  %180 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %181 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %180, i32 0, i32 4
  store i32 0, i32* %181, align 8
  br label %185

182:                                              ; preds = %3
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %186

185:                                              ; preds = %164, %146, %128, %124, %83, %65, %47, %29, %11
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
