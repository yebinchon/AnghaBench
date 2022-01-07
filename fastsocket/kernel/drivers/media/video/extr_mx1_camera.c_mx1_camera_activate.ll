; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx1_camera_dev = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CSICR1_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Activate device\0A\00", align 1
@CSICR1 = common dso_local global i64 0, align 8
@CSICR1_MCLKEN = common dso_local global i32 0, align 4
@CSICR1_FCC = common dso_local global i32 0, align 4
@CSICR1_GCLK_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx1_camera_dev*)* @mx1_camera_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx1_camera_activate(%struct.mx1_camera_dev* %0) #0 {
  %2 = alloca %struct.mx1_camera_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mx1_camera_dev* %0, %struct.mx1_camera_dev** %2, align 8
  %4 = load i32, i32* @CSICR1_EN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_enable(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CSICR1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_writel(i32 %16, i64 %21)
  %23 = load i32, i32* @CSICR1_MCLKEN, align 4
  %24 = load i32, i32* @CSICR1_FCC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CSICR1_GCLK_MODE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %2, align 8
  %31 = call i32 @mclk_get_divisor(%struct.mx1_camera_dev* %30)
  %32 = call i32 @CSICR1_MCLKDIV(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = call i32 @CSICR1_RXFF_LEVEL(i32 2)
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %2, align 8
  %40 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CSICR1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @__raw_writel(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @CSICR1_MCLKDIV(i32) #1

declare dso_local i32 @mclk_get_divisor(%struct.mx1_camera_dev*) #1

declare dso_local i32 @CSICR1_RXFF_LEVEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
