; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i64, i32, i64, i64, i32, i32 }

@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@F_SIF = common dso_local global i32 0, align 4
@F_COARSE_EXPO = common dso_local global i32 0, align 4
@GAIN_KNEE = common dso_local global i32 0, align 4
@EXPOSURE_KNEE = common dso_local global i32 0, align 4
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"autogain: gain changed: gain: %d expo: %d\00", align 1
@AUTOGAIN_IGNORE_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @do_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autogain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load %struct.sd*, %struct.sd** %6, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 6
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.sd*, %struct.sd** %6, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  br label %96

21:                                               ; preds = %15
  %22 = load %struct.sd*, %struct.sd** %6, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.sd*, %struct.sd** %6, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %96

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %33 = load %struct.sd*, %struct.sd** %6, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @F_SIF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 500, i32* %3, align 4
  store i32 5000, i32* %4, align 4
  br label %44

43:                                               ; preds = %31
  store i32 1500, i32* %3, align 4
  store i32 13000, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %46 = load %struct.sd*, %struct.sd** %6, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @F_COARSE_EXPO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.sd*, %struct.sd** %6, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 127
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @gspca_coarse_grained_expo_autogain(%struct.gspca_dev* %56, i32 %57, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %79

66:                                               ; preds = %44
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.sd*, %struct.sd** %6, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sdiv i32 %73, 127
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @GAIN_KNEE, align 4
  %77 = load i32, i32* @EXPOSURE_KNEE, align 4
  %78 = call i32 @gspca_auto_gain_n_exposure(%struct.gspca_dev* %67, i32 %68, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %66, %55
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* @D_FRAM, align 4
  %84 = load %struct.sd*, %struct.sd** %6, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.sd*, %struct.sd** %6, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @PDEBUG(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load i64, i64* @AUTOGAIN_IGNORE_FRAMES, align 8
  %94 = load %struct.sd*, %struct.sd** %6, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %20, %26, %82, %79
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @gspca_coarse_grained_expo_autogain(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_auto_gain_n_exposure(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
