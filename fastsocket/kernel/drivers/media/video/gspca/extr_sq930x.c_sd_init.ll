; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i64, i32* }
%struct.sd = type { i32*, i64 }

@SQ930_CTRL_GET_DEV_INFO = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"info: %02x %02x %02x %02x %02x %02x %02x %02x\00", align 1
@SENSOR_MI0360 = common dso_local global i64 0, align 8
@SENSOR_ICX098BQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Sensor %s\00", align 1
@sensor_tb = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %4, align 8
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 255, i32* %10, align 4
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 255, i32* %14, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = load i32, i32* @SQ930_CTRL_GET_DEV_INFO, align 4
  %17 = call i32 @reg_r(%struct.gspca_dev* %15, i32 %16, i32 8)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %114

27:                                               ; preds = %1
  %28 = load i32, i32* @D_PROBE, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48, i32 %53, i32 %58, i32 %63, i32 %68)
  %70 = load %struct.sd*, %struct.sd** %4, align 8
  %71 = call i32 @bridge_init(%struct.sd* %70)
  %72 = load %struct.sd*, %struct.sd** %4, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SENSOR_MI0360, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %27
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 246
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i64, i64* @SENSOR_ICX098BQ, align 8
  %86 = load %struct.sd*, %struct.sd** %4, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %90 = call i32 @cmos_probe(%struct.gspca_dev* %89)
  br label %91

91:                                               ; preds = %88, %84
  br label %92

92:                                               ; preds = %91, %27
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i32, i32* @D_PROBE, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_tb, align 8
  %100 = load %struct.sd*, %struct.sd** %4, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.sd*, %struct.sd** %4, align 8
  %108 = call i32 @global_init(%struct.sd* %107, i32 1)
  br label %109

109:                                              ; preds = %97, %92
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %22
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @bridge_init(%struct.sd*) #1

declare dso_local i32 @cmos_probe(%struct.gspca_dev*) #1

declare dso_local i32 @global_init(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
