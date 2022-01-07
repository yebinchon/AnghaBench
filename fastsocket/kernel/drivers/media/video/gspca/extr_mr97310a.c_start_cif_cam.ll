; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_start_cif_cam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_start_cif_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_w_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32*, i32 }
%struct.sd = type { i32 }

@start_cif_cam.startup_string = internal constant [11 x i32] [i32 0, i32 13, i32 1, i32 0, i32 0, i32 19, i32 0, i32 0, i32 0, i32 80, i32 192], align 16
@start_cif_cam.cif_sensor0_init_data = internal constant [14 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 3, %struct.TYPE_2__ { i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 12, i32 0, i32 4, %struct.TYPE_2__ { i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 7, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 31, i32 0, i32 6, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 39, i32 0, i32 4, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 41, i32 0, i32 12, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 64, i32 0, i32 64, %struct.TYPE_2__ { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 80, i32 0, i32 96, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 96, i32 0, i32 6, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 107, i32 0, i32 133, %struct.TYPE_2__ { i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 114, i32 0, i32 30, %struct.TYPE_2__ { i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 117, i32 0, i32 88, %struct.TYPE_2__ { i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 0, i32 1, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@start_cif_cam.cif_sensor1_init_data = internal constant [15 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 16, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 5, i32 1, i32 34, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 6, i32 1, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 9, i32 2, i32 14, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 10, i32 2, i32 5, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 11, i32 2, i32 5, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 12, i32 2, i32 15, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 13, i32 2, i32 7, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 14, i32 2, i32 12, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 15, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 16, i32 0, i32 6, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 0, i32 7, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 19, i32 0, i32 1, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @start_cif_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_cif_cam(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @memcpy(i32* %12, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @start_cif_cam.startup_string, i64 0, i64 0), i32 11)
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 187, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %31 [
    i32 160, label %25
    i32 320, label %30
    i32 176, label %44
    i32 352, label %49
  ]

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 9
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 4
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %21, %25
  br label %31

31:                                               ; preds = %21, %30
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 40, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 60, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  store i32 20, i32* %37, align 4
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 26, %40
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32 %41, i32* %43, align 4
  br label %62

44:                                               ; preds = %21
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 9
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 4
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %21, %44
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 44, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 72, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 6, i32* %55, align 4
  %56 = load %struct.sd*, %struct.sd** %4, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 6, %58
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %49, %31
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = call i32 @mr_write(%struct.gspca_dev* %63, i32 11)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %99

69:                                               ; preds = %62
  %70 = load %struct.sd*, %struct.sd** %4, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([14 x %struct.sensor_w_data], [14 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor0_init_data, i64 0, i64 0))
  %77 = call i32 @sensor_write_regs(%struct.gspca_dev* %75, %struct.sensor_w_data* getelementptr inbounds ([14 x %struct.sensor_w_data], [14 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor0_init_data, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %6, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %80 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 10, i32* %82, align 4
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %88 = call i32 @mr_write(%struct.gspca_dev* %87, i32 2)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %78
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([15 x %struct.sensor_w_data], [15 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor1_init_data, i64 0, i64 0))
  %96 = call i32 @sensor_write_regs(%struct.gspca_dev* %94, %struct.sensor_w_data* getelementptr inbounds ([15 x %struct.sensor_w_data], [15 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor1_init_data, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %74
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %91, %67
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mr_write(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sensor_write_regs(%struct.gspca_dev*, %struct.sensor_w_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_w_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
