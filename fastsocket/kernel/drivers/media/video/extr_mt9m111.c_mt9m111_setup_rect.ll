; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_setup_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_setup_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mt9m111 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@V4L2_MBUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = common dso_local global i64 0, align 8
@COLUMN_START = common dso_local global i32 0, align 4
@ROW_START = common dso_local global i32 0, align 4
@WINDOW_WIDTH = common dso_local global i32 0, align 4
@WINDOW_HEIGHT = common dso_local global i32 0, align 4
@REDUCER_XZOOM_B = common dso_local global i32 0, align 4
@MT9M111_MAX_WIDTH = common dso_local global i32 0, align 4
@REDUCER_YZOOM_B = common dso_local global i32 0, align 4
@MT9M111_MAX_HEIGHT = common dso_local global i32 0, align 4
@REDUCER_XSIZE_B = common dso_local global i32 0, align 4
@REDUCER_YSIZE_B = common dso_local global i32 0, align 4
@REDUCER_XZOOM_A = common dso_local global i32 0, align 4
@REDUCER_YZOOM_A = common dso_local global i32 0, align 4
@REDUCER_XSIZE_A = common dso_local global i32 0, align 4
@REDUCER_YSIZE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.v4l2_rect*)* @mt9m111_setup_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_setup_rect(%struct.i2c_client* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.mt9m111*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %10)
  store %struct.mt9m111* %11, %struct.mt9m111** %5, align 8
  %12 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %19 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_MBUS_FMT_SBGGR8_1X8, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %27 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %2
  store i32 1, i32* %7, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* @COLUMN_START, align 4
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @reg_write(i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ROW_START, align 4
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reg_write(i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %35
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @WINDOW_WIDTH, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @reg_write(i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @WINDOW_HEIGHT, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @reg_write(i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %59
  br label %124

67:                                               ; preds = %49
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @REDUCER_XZOOM_B, align 4
  %72 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %73 = call i32 @reg_write(i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @REDUCER_YZOOM_B, align 4
  %79 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %80 = call i32 @reg_write(i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @REDUCER_XSIZE_B, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @reg_write(i32 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @REDUCER_YSIZE_B, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @reg_write(i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @REDUCER_XZOOM_A, align 4
  %100 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %101 = call i32 @reg_write(i32 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @REDUCER_YZOOM_A, align 4
  %107 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %108 = call i32 @reg_write(i32 %106, i32 %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @REDUCER_XSIZE_A, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @reg_write(i32 %113, i32 %114)
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @REDUCER_YSIZE_A, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @reg_write(i32 %120, i32 %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123, %66
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
