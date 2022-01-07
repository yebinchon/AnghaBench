; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32*, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32, i32*, i32 }

@MODE_RAW = common dso_local global i32 0, align 4
@MODE_JPEG = common dso_local global i32 0, align 4
@SCALE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Set 1280x1024\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Set 640x480\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Set 320x240\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Set 160x120\00", align 1
@JPEG_QT0_OFFSET = common dso_local global i64 0, align 8
@JPEG_QT1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %3, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @jpeg_define(i32* %31, i32 %32, i32 %33, i32 33)
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @jpeg_set_qual(i32* %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MODE_RAW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 45, i32* %7, align 4
  br label %55

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @MODE_JPEG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 44, i32* %7, align 4
  br label %54

53:                                               ; preds = %47
  store i32 47, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SCALE_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %67 [
    i32 131, label %59
    i32 128, label %61
    i32 129, label %63
    i32 130, label %65
  ]

59:                                               ; preds = %55
  store i32 192, i32* %8, align 4
  %60 = call i32 @info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %67

61:                                               ; preds = %55
  store i32 128, i32* %8, align 4
  %62 = call i32 @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %67

63:                                               ; preds = %55
  store i32 144, i32* %8, align 4
  %64 = call i32 @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %67

65:                                               ; preds = %55
  store i32 160, i32* %8, align 4
  %66 = call i32 @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %55, %65, %63, %61, %59
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @configure_sensor_output(%struct.gspca_dev* %68, i32 %69)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = load %struct.sd*, %struct.sd** %3, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @JPEG_QT0_OFFSET, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = call i32 @reg_w(%struct.gspca_dev* %71, i32 4352, i32* %76, i32 64)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @JPEG_QT1_OFFSET, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @reg_w(%struct.gspca_dev* %78, i32 4416, i32* %83, i32 64)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32* @CLR_WIN(i32 %86, i32 %87)
  %89 = call i32 @reg_w(%struct.gspca_dev* %85, i32 4347, i32* %88, i32 5)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.sd*, %struct.sd** %3, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sd*, %struct.sd** %3, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32* @HW_WIN(i32 %91, i32 %94, i32 %97)
  %99 = call i32 @reg_w(%struct.gspca_dev* %90, i32 4480, i32* %98, i32 6)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @reg_w1(%struct.gspca_dev* %100, i32 4489, i32 %101)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @reg_w1(%struct.gspca_dev* %103, i32 4320, i32 %104)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @set_cmatrix(%struct.gspca_dev* %106)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = call i32 @set_gamma(%struct.gspca_dev* %108)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = call i32 @set_redblue(%struct.gspca_dev* %110)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = call i32 @set_gain(%struct.gspca_dev* %112)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %115 = call i32 @set_exposure(%struct.gspca_dev* %114)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = call i32 @set_hvflip(%struct.gspca_dev* %116)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = call i32 @reg_w1(%struct.gspca_dev* %118, i32 4103, i32 32)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = call i32 @reg_r(%struct.gspca_dev* %120, i32 4193, i32 1)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, 2
  %129 = call i32 @reg_w1(%struct.gspca_dev* %122, i32 4193, i32 %128)
  ret i32 0
}

declare dso_local i32 @jpeg_define(i32*, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32*, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @configure_sensor_output(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32* @CLR_WIN(i32, i32) #1

declare dso_local i32* @HW_WIN(i32, i32, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_cmatrix(%struct.gspca_dev*) #1

declare dso_local i32 @set_gamma(%struct.gspca_dev*) #1

declare dso_local i32 @set_redblue(%struct.gspca_dev*) #1

declare dso_local i32 @set_gain(%struct.gspca_dev*) #1

declare dso_local i32 @set_exposure(%struct.gspca_dev*) #1

declare dso_local i32 @set_hvflip(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
