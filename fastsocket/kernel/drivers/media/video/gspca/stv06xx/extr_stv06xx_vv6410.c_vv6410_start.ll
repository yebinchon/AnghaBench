; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VV6410_CROP_TO_QVGA = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cropping to QVGA\00", align 1
@VV6410_XENDH = common dso_local global i32 0, align 4
@VV6410_YENDH = common dso_local global i32 0, align 4
@VV6410_SUBSAMPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Enabling subsampling\00", align 1
@STV_Y_CTRL = common dso_local global i32 0, align 4
@STV_X_CTRL = common dso_local global i32 0, align 4
@STV_SCAN_RATE = common dso_local global i32 0, align 4
@STV_LED_CTRL = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@VV6410_SETUP0 = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Starting stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @vv6410_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam*, align 8
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.cam* %9, %struct.cam** %5, align 8
  %10 = load %struct.cam*, %struct.cam** %5, align 8
  %11 = getelementptr inbounds %struct.cam, %struct.cam* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VV6410_CROP_TO_QVGA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i32, i32* @D_CONF, align 4
  %26 = call i32 @PDEBUG(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = load i32, i32* @VV6410_XENDH, align 4
  %29 = call i32 @stv06xx_write_sensor(%struct.sd* %27, i32 %28, i32 319)
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = load i32, i32* @VV6410_YENDH, align 4
  %32 = call i32 @stv06xx_write_sensor(%struct.sd* %30, i32 %31, i32 239)
  br label %40

33:                                               ; preds = %1
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = load i32, i32* @VV6410_XENDH, align 4
  %36 = call i32 @stv06xx_write_sensor(%struct.sd* %34, i32 %35, i32 359)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = load i32, i32* @VV6410_YENDH, align 4
  %39 = call i32 @stv06xx_write_sensor(%struct.sd* %37, i32 %38, i32 293)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @VV6410_SUBSAMPLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* @D_CONF, align 4
  %47 = call i32 @PDEBUG(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = load i32, i32* @STV_Y_CTRL, align 4
  %50 = call i32 @stv06xx_write_bridge(%struct.sd* %48, i32 %49, i32 2)
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = load i32, i32* @STV_X_CTRL, align 4
  %53 = call i32 @stv06xx_write_bridge(%struct.sd* %51, i32 %52, i32 6)
  %54 = load %struct.sd*, %struct.sd** %3, align 8
  %55 = load i32, i32* @STV_SCAN_RATE, align 4
  %56 = call i32 @stv06xx_write_bridge(%struct.sd* %54, i32 %55, i32 16)
  br label %67

57:                                               ; preds = %40
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = load i32, i32* @STV_Y_CTRL, align 4
  %60 = call i32 @stv06xx_write_bridge(%struct.sd* %58, i32 %59, i32 1)
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = load i32, i32* @STV_X_CTRL, align 4
  %63 = call i32 @stv06xx_write_bridge(%struct.sd* %61, i32 %62, i32 10)
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = load i32, i32* @STV_SCAN_RATE, align 4
  %66 = call i32 @stv06xx_write_bridge(%struct.sd* %64, i32 %65, i32 32)
  br label %67

67:                                               ; preds = %57, %45
  %68 = load %struct.sd*, %struct.sd** %3, align 8
  %69 = load i32, i32* @STV_LED_CTRL, align 4
  %70 = load i32, i32* @LED_ON, align 4
  %71 = call i32 @stv06xx_write_bridge(%struct.sd* %68, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %87

76:                                               ; preds = %67
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = load i32, i32* @VV6410_SETUP0, align 4
  %79 = call i32 @stv06xx_write_sensor(%struct.sd* %77, i32 %78, i32 0)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @D_STREAM, align 4
  %86 = call i32 @PDEBUG(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %82, %74
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
