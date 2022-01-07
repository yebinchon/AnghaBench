; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_po1030.c_po1030_set_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_po1030.c_po1030_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@EXPOSURE_IDX = common dso_local global i64 0, align 8
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Set exposure to %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Set exposure to high byte to 0x%x\00", align 1
@PO1030_INTEGLINES_H = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Set exposure to low byte to 0x%x\00", align 1
@PO1030_INTEGLINES_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @po1030_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @po1030_set_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %6, align 8
  %12 = load %struct.sd*, %struct.sd** %6, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* @EXPOSURE_IDX, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @D_V4L2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 65535
  %22 = call i32 @PDEBUG(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @D_V4L2, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.sd*, %struct.sd** %6, align 8
  %30 = load i32, i32* @PO1030_INTEGLINES_H, align 4
  %31 = call i32 @m5602_write_sensor(%struct.sd* %29, i32 %30, i32* %8, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @D_V4L2, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @PDEBUG(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.sd*, %struct.sd** %6, align 8
  %43 = load i32, i32* @PO1030_INTEGLINES_M, align 4
  %44 = call i32 @m5602_write_sensor(%struct.sd* %42, i32 %43, i32* %8, i32 1)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %34
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
