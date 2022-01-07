; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i64 }
%struct.sd = type { i32, i32* }

@stv_bridge_init = common dso_local global %struct.TYPE_4__* null, align 8
@vv6410_sensor_init = common dso_local global %struct.TYPE_4__* null, align 8
@EXPOSURE_IDX = common dso_local global i64 0, align 8
@GAIN_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @vv6410_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %76, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @stv06xx_write_bridge(%struct.sd* %25, i64 %31, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %40
  %50 = load %struct.sd*, %struct.sd** %3, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @stv06xx_write_bridge(%struct.sd* %50, i64 %59, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %40

74:                                               ; preds = %40
  br label %75

75:                                               ; preds = %74, %24
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %11

79:                                               ; preds = %11
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %122

84:                                               ; preds = %79
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vv6410_sensor_init, align 8
  %87 = bitcast %struct.TYPE_4__* %86 to i32*
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vv6410_sensor_init, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %88)
  %90 = call i32 @stv06xx_write_sensor_bytes(%struct.sd* %85, i32* %87, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %122

95:                                               ; preds = %84
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 0
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* @EXPOSURE_IDX, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vv6410_set_exposure(i32* %97, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %122

107:                                              ; preds = %95
  %108 = load %struct.sd*, %struct.sd** %3, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 0
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* @GAIN_IDX, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @vv6410_set_analog_gain(i32* %109, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* %4, align 4
  br label %120

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %105, %93, %82
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i64, i32) #1

declare dso_local i32 @stv06xx_write_sensor_bytes(%struct.sd*, i32*, i32) #1

declare dso_local i32 @vv6410_set_exposure(i32*, i32) #1

declare dso_local i32 @vv6410_set_analog_gain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
