; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_mi0360_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_mi0360_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i64 }
%struct.sd = type { i32 }

@mi0360_probe.probe_tb = internal constant [2 x [4 x [8 x i64]]] [[4 x [8 x i64]] [[8 x i64] [i64 176, i64 93, i64 7, i64 0, i64 2, i64 0, i64 0, i64 16], [8 x i64] [i64 144, i64 93, i64 0, i64 0, i64 0, i64 0, i64 0, i64 16], [8 x i64] [i64 162, i64 93, i64 0, i64 0, i64 0, i64 0, i64 0, i64 16], [8 x i64] [i64 176, i64 93, i64 7, i64 0, i64 0, i64 0, i64 0, i64 16]], [4 x [8 x i64]] [[8 x i64] [i64 176, i64 92, i64 1, i64 0, i64 4, i64 0, i64 0, i64 16], [8 x i64] [i64 144, i64 92, i64 54, i64 0, i64 0, i64 0, i64 0, i64 16], [8 x i64] [i64 162, i64 92, i64 0, i64 0, i64 0, i64 0, i64 0, i64 16], [8 x i64] zeroinitializer]], align 16
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Sensor mi0360b\00", align 1
@SENSOR_MI0360B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Sensor mt9v111\00", align 1
@SENSOR_MT9V111 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Sensor mi0360\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unknown sensor %04x - forced to mi0360\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @mi0360_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mi0360_probe(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %74, %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ARRAY_SIZE(i64*** bitcast ([2 x [4 x [8 x i64]]]* @mi0360_probe.probe_tb to i64***))
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w1(%struct.gspca_dev* %14, i32 23, i32 98)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @reg_w1(%struct.gspca_dev* %16, i32 1, i32 8)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %31, %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x [4 x [8 x i64]]], [2 x [4 x [8 x i64]]]* @mi0360_probe.probe_tb, i64 0, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %25, i64 0, i64 %27
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %28, i64 0, i64 0
  %30 = call i32 @i2c_w8(%struct.gspca_dev* %22, i64* %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %18

34:                                               ; preds = %18
  %35 = call i32 @msleep(i32 2)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @reg_r(%struct.gspca_dev* %36, i32 10, i32 5)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x [4 x [8 x i64]]], [2 x [4 x [8 x i64]]]* @mi0360_probe.probe_tb, i64 0, i64 %51
  %53 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %52, i64 0, i64 3
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %53, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %34
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x [4 x [8 x i64]]], [2 x [4 x [8 x i64]]]* @mi0360_probe.probe_tb, i64 0, i64 %60
  %62 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %61, i64 0, i64 3
  %63 = getelementptr inbounds [8 x i64], [8 x i64]* %62, i64 0, i64 0
  %64 = call i32 @i2c_w8(%struct.gspca_dev* %58, i64* %63)
  br label %65

65:                                               ; preds = %57, %34
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @reg_w1(%struct.gspca_dev* %66, i32 1, i32 41)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @reg_w1(%struct.gspca_dev* %68, i32 23, i32 66)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 65535
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %9

77:                                               ; preds = %72, %9
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %104

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %100 [
    i32 33313, label %85
    i32 33338, label %91
    i32 33347, label %97
  ]

85:                                               ; preds = %83
  %86 = load i32, i32* @D_PROBE, align 4
  %87 = call i32 (i32, i8*, ...) @PDEBUG(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @SENSOR_MI0360B, align 4
  %89 = load %struct.sd*, %struct.sd** %3, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %104

91:                                               ; preds = %83
  %92 = load i32, i32* @D_PROBE, align 4
  %93 = call i32 (i32, i8*, ...) @PDEBUG(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @SENSOR_MT9V111, align 4
  %95 = load %struct.sd*, %struct.sd** %3, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %104

97:                                               ; preds = %83
  %98 = load i32, i32* @D_PROBE, align 4
  %99 = call i32 (i32, i8*, ...) @PDEBUG(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %104

100:                                              ; preds = %83
  %101 = load i32, i32* @D_PROBE, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, ...) @PDEBUG(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %82, %100, %97, %91, %85
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64***) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i64*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
