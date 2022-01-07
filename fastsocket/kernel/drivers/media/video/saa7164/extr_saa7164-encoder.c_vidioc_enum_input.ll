; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"svideo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"composite 2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"svideo 2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"aux 2\00", align 1
@__const.vidioc_enum_input.inputs = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)], align 16
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@saa7164_tvnorms = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [7 x i8*], align 16
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = bitcast [7 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([7 x i8*]* @__const.vidioc_enum_input.inputs to i8*), i64 56, i1 false)
  %11 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcpy(i32 %21, i8* %27)
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7164_tvnorms, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saa7164_tvnorms, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %42

61:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
