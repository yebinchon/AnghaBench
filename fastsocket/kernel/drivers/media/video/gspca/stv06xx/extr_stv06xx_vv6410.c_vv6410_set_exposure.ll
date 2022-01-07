; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_set_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@EXPOSURE_IDX = common dso_local global i64 0, align 8
@VV6410_CIF_LINELENGTH = common dso_local global i32 0, align 4
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Set coarse exposure to %d, fine expsure to %d\00", align 1
@VV6410_FINEH = common dso_local global i32 0, align 4
@VV6410_FINEL = common dso_local global i32 0, align 4
@VV6410_COARSEH = common dso_local global i32 0, align 4
@VV6410_COARSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @vv6410_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_set_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %6, align 8
  %12 = load %struct.sd*, %struct.sd** %6, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* @EXPOSURE_IDX, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %19, %20
  %22 = ashr i32 %21, 14
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 4
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @VV6410_CIF_LINELENGTH, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VV6410_CIF_LINELENGTH, align 4
  %31 = sdiv i32 %29, %30
  %32 = call i32 @min(i32 512, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @D_V4L2, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @PDEBUG(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.sd*, %struct.sd** %6, align 8
  %38 = load i32, i32* @VV6410_FINEH, align 4
  %39 = load i32, i32* %8, align 4
  %40 = lshr i32 %39, 8
  %41 = call i32 @stv06xx_write_sensor(%struct.sd* %37, i32 %38, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %69

45:                                               ; preds = %2
  %46 = load %struct.sd*, %struct.sd** %6, align 8
  %47 = load i32, i32* @VV6410_FINEL, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 255
  %50 = call i32 @stv06xx_write_sensor(%struct.sd* %46, i32 %47, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %69

54:                                               ; preds = %45
  %55 = load %struct.sd*, %struct.sd** %6, align 8
  %56 = load i32, i32* @VV6410_COARSEH, align 4
  %57 = load i32, i32* %9, align 4
  %58 = lshr i32 %57, 8
  %59 = call i32 @stv06xx_write_sensor(%struct.sd* %55, i32 %56, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.sd*, %struct.sd** %6, align 8
  %65 = load i32, i32* @VV6410_COARSEL, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 255
  %68 = call i32 @stv06xx_write_sensor(%struct.sd* %64, i32 %65, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %62, %53, %44
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
