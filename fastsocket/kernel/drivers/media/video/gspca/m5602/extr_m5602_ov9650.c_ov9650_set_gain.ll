; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov9650.c_ov9650_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov9650.c_ov9650_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Setting gain to %d\00", align 1
@GAIN_IDX = common dso_local global i64 0, align 8
@OV9650_VREF = common dso_local global i32 0, align 4
@OV9650_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @ov9650_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9650_set_gain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %8, align 8
  %12 = load %struct.sd*, %struct.sd** %8, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* @D_V4L2, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PDEBUG(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* @GAIN_IDX, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load %struct.sd*, %struct.sd** %8, align 8
  %23 = load i32, i32* @OV9650_VREF, align 4
  %24 = call i32 @m5602_read_sensor(%struct.sd* %22, i32 %23, i32* %7, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 768
  %32 = ashr i32 %31, 2
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 63
  %35 = or i32 %32, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.sd*, %struct.sd** %8, align 8
  %37 = load i32, i32* @OV9650_VREF, align 4
  %38 = call i32 @m5602_write_sensor(%struct.sd* %36, i32 %37, i32* %7, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 255
  store i32 %45, i32* %7, align 4
  %46 = load %struct.sd*, %struct.sd** %8, align 8
  %47 = load i32, i32* @OV9650_GAIN, align 4
  %48 = call i32 @m5602_write_sensor(%struct.sd* %46, i32 %47, i32* %7, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %41, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
