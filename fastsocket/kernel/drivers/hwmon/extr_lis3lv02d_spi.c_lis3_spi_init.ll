; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d_spi.c_lis3_spi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d_spi.c_lis3_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32)* }

@CTRL_REG1 = common dso_local global i32 0, align 4
@CTRL1_PD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*)* @lis3_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3_spi_init(%struct.lis3lv02d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lis3lv02d*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %3, align 8
  %6 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %7 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %6, i32 0, i32 0
  %8 = load i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32*)** %7, align 8
  %9 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %10 = load i32, i32* @CTRL_REG1, align 4
  %11 = call i32 %8(%struct.lis3lv02d* %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @CTRL1_PD0, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %21 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %20, i32 0, i32 1
  %22 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %21, align 8
  %23 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %24 = load i32, i32* @CTRL_REG1, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %22(%struct.lis3lv02d* %23, i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
