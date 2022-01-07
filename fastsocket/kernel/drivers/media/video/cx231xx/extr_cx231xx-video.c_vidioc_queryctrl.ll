; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.v4l2_queryctrl }
%struct.v4l2_queryctrl = type { i32, i64 }
%struct.file = type { i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@ctrl_classes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_BASE = common dso_local global i32 0, align 4
@V4L2_CID_LASTP1 = common dso_local global i32 0, align 4
@CX231XX_CTLS = common dso_local global i32 0, align 4
@cx231xx_ctls = common dso_local global %struct.TYPE_2__* null, align 8
@no_ctl = common dso_local global %struct.v4l2_queryctrl zeroinitializer, align 8
@core = common dso_local global i32 0, align 4
@queryctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %14, %struct.cx231xx_fh** %8, align 8
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %15, i32 0, i32 0
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %9, align 8
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %22 = call i32 @check_dev(%struct.cx231xx* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %116

27:                                               ; preds = %3
  %28 = load i32, i32* @ctrl_classes, align 4
  %29 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @v4l2_ctrl_next(i32 %28, i32 %31)
  %33 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %116

45:                                               ; preds = %27
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %47 = call i32 @memset(%struct.v4l2_queryctrl* %46, i32 0, i32 16)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @V4L2_CID_BASE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %45
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @V4L2_CID_LASTP1, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %45
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %116

65:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @CX231XX_CTLS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx231xx_ctls, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %87

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %66

87:                                               ; preds = %82, %66
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @CX231XX_CTLS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %93 = bitcast %struct.v4l2_queryctrl* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctl to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %116

94:                                               ; preds = %87
  %95 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx231xx_ctls, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = bitcast %struct.v4l2_queryctrl* %95 to i8*
  %102 = bitcast %struct.v4l2_queryctrl* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %104 = load i32, i32* @core, align 4
  %105 = load i32, i32* @queryctrl, align 4
  %106 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %107 = call i32 @call_all(%struct.cx231xx* %103, i32 %104, i32 %105, %struct.v4l2_queryctrl* %106)
  %108 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %116

113:                                              ; preds = %94
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %112, %91, %62, %42, %25
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i32 @v4l2_ctrl_next(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
