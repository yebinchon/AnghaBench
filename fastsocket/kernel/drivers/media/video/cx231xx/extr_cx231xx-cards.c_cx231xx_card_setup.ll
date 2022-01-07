; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_card_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.cx231xx = type { i64, i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@cx231xx_boards = common dso_local global %struct.TYPE_6__* null, align 8
@CX231XX_AVDECODER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"cx25840\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cx25840 subdev registration failure\0A\00", align 1
@core = common dso_local global i32 0, align 4
@load_fw = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"tuner subdev registration failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_card_setup(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %3 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %4 = call i32 @cx231xx_set_model(%struct.cx231xx* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cx231xx_boards, align 8
  %6 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %7 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cx231xx_boards, align 8
  %15 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cx231xx_boards, align 8
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CX231XX_AVDECODER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 5
  %42 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i8* @v4l2_i2c_new_subdev(i32* %41, i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 68, i32* null)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = call i32 @cx231xx_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %39
  %58 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %59 = load i32, i32* @core, align 4
  %60 = load i32, i32* @load_fw, align 4
  %61 = call i32 @cx25840_call(%struct.cx231xx* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %32
  %63 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TUNER_ABSENT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %62
  %70 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %71 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %70, i32 0, i32 5
  %72 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %82 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @v4l2_i2c_new_subdev(i32* %71, i32* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32* null)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %89 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = call i32 @cx231xx_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %97

94:                                               ; preds = %69
  %95 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %96 = call i32 @cx231xx_config_tuner(%struct.cx231xx* %95)
  br label %97

97:                                               ; preds = %94, %92
  br label %98

98:                                               ; preds = %97, %62
  ret void
}

declare dso_local i32 @cx231xx_set_model(%struct.cx231xx*) #1

declare dso_local i8* @v4l2_i2c_new_subdev(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @cx231xx_info(i8*) #1

declare dso_local i32 @cx25840_call(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_config_tuner(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
