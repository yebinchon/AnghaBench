; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.TYPE_2__ = type { i64, i32* }

@SAA7134_INPUT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO1 = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO2 = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SYNC = common dso_local global i32 0, align 4
@V4L2_IN_ST_MACROVISION = common dso_local global i32 0, align 4
@SAA7134_NORMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @saa7134_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %17, %struct.saa7134_fh** %8, align 8
  %18 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %19 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %18, i32 0, i32 0
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %19, align 8
  store %struct.saa7134_dev* %20, %struct.saa7134_dev** %9, align 8
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %130

30:                                               ; preds = %3
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call { i64, i32* } @card_in(%struct.saa7134_dev* %31, i32 %34)
  %36 = bitcast %struct.TYPE_2__* %11 to { i64, i32* }*
  %37 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i32* } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i32* } %35, 1
  store i32* %40, i32** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* null, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %130

47:                                               ; preds = %30
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %52 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call { i64, i32* } @card_in(%struct.saa7134_dev* %57, i32 %58)
  %60 = bitcast %struct.TYPE_2__* %12 to { i64, i32* }*
  %61 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i32* } %59, 0
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i32* } %59, 1
  store i32* %64, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @strcpy(i32 %56, i32* %66)
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call { i64, i32* } @card_in(%struct.saa7134_dev* %68, i32 %69)
  %71 = bitcast %struct.TYPE_2__* %13 to { i64, i32* }*
  %72 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %71, i32 0, i32 0
  %73 = extractvalue { i64, i32* } %70, 0
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %71, i32 0, i32 1
  %75 = extractvalue { i64, i32* } %70, 1
  store i32* %75, i32** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %47
  %80 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %81 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %47
  %84 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %88 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %83
  %92 = load i32, i32* @SAA7134_STATUS_VIDEO1, align 4
  %93 = call i32 @saa_readb(i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* @SAA7134_STATUS_VIDEO2, align 4
  %95 = call i32 @saa_readb(i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %96, 64
  %98 = icmp ne i32 0, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %101 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %91
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %106, 64
  %108 = icmp ne i32 0, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* @V4L2_IN_ST_NO_SYNC, align 4
  %111 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %105
  %116 = load i32, i32* %15, align 4
  %117 = and i32 %116, 14
  %118 = icmp ne i32 0, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* @V4L2_IN_ST_MACROVISION, align 4
  %121 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %115
  br label %126

126:                                              ; preds = %125, %83
  %127 = load i32, i32* @SAA7134_NORMS, align 4
  %128 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %44, %27
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local { i64, i32* } @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @strcpy(i32, i32*) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
