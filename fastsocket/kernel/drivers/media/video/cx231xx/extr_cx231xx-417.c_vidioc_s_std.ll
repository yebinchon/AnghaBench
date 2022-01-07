; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@cx231xx_tvnorms = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"encodernorm set to NTSC\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"encodernorm set to PAL\0A\00", align 1
@V4L2_STD_PAL_B = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"exit vidioc_s_std() i=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %12, align 8
  store %struct.cx231xx_fh* %13, %struct.cx231xx_fh** %8, align 8
  %14 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %15 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %14, i32 0, i32 0
  %16 = load %struct.cx231xx*, %struct.cx231xx** %15, align 8
  store %struct.cx231xx* %16, %struct.cx231xx** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %35, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx231xx_tvnorms, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx231xx_tvnorms, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %17

38:                                               ; preds = %33, %17
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx231xx_tvnorms, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %40)
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %95

46:                                               ; preds = %38
  %47 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx231xx_tvnorms, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = bitcast %struct.TYPE_7__* %48 to i8*
  %54 = bitcast %struct.TYPE_7__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 45056
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %46
  %62 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @V4L2_STD_NTSC, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %65 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 480, i32* %68, align 4
  %69 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %83

72:                                               ; preds = %46
  %73 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @V4L2_STD_PAL_B, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 576, i32* %79, align 4
  %80 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %72, %61
  %84 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %85 = load i32, i32* @core, align 4
  %86 = load i32, i32* @s_std, align 4
  %87 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %88 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @call_all(%struct.cx231xx* %84, i32 %85, i32 %86, i32 %89)
  %91 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %92 = call i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx* %91)
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %83, %43
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, i32) #1

declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
