; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_set_vflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_set_vflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64* }

@VFLIP_IDX = common dso_local global i64 0, align 8
@VV6410_DATAFORMAT = common dso_local global i32 0, align 4
@VV6410_VFLIP = common dso_local global i32 0, align 4
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set vertical flip to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i64)* @vv6410_set_vflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_set_vflip(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i64*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %8, align 8
  %12 = load %struct.sd*, %struct.sd** %8, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* @VFLIP_IDX, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 %15, i64* %18, align 8
  %19 = load %struct.sd*, %struct.sd** %8, align 8
  %20 = load i32, i32* @VV6410_DATAFORMAT, align 4
  %21 = call i32 @stv06xx_read_sensor(%struct.sd* %19, i32 %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @VV6410_VFLIP, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @VV6410_VFLIP, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @D_V4L2, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @PDEBUG(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.sd*, %struct.sd** %8, align 8
  %43 = load i32, i32* @VV6410_DATAFORMAT, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @stv06xx_write_sensor(%struct.sd* %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @stv06xx_read_sensor(%struct.sd*, i32, i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
