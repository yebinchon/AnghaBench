; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Composite%d\00", align 1
@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_PRES = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@BT848_DSTATUS_HLOC = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@BTTV_NORMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @bttv_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_input*, align 8
  %7 = alloca %struct.bttv_fh*, align 8
  %8 = alloca %struct.bttv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bttv_fh*
  store %struct.bttv_fh* %12, %struct.bttv_fh** %7, align 8
  %13 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %14 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %13, i32 0, i32 0
  %15 = load %struct.bttv*, %struct.bttv** %14, align 8
  store %struct.bttv* %15, %struct.bttv** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %20 = load %struct.bttv*, %struct.bttv** %8, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %18, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %116

31:                                               ; preds = %3
  %32 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.bttv*, %struct.bttv** %8, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TUNER_ABSENT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %31
  %43 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @sprintf(i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %53 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  br label %79

57:                                               ; preds = %42, %31
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bttv*, %struct.bttv** %8, align 8
  %62 = getelementptr inbounds %struct.bttv, %struct.bttv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @sprintf(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %78

70:                                               ; preds = %57
  %71 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, ...) @sprintf(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %70, %65
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bttv*, %struct.bttv** %8, align 8
  %84 = getelementptr inbounds %struct.bttv, %struct.bttv* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %79
  %88 = load i32, i32* @BT848_DSTATUS, align 4
  %89 = call i32 @btread(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @BT848_DSTATUS_PRES, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 0, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %96 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @BT848_DSTATUS_HLOC, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 0, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %107 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i32, i32* @BTTV_NORMS, align 4
  %114 = load %struct.v4l2_input*, %struct.v4l2_input** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %28
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @btread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
