; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_make_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_make_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_ceu_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SOCAM_MASTER = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SH_CEU_FLAG_USE_8BIT_BUS = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_8 = common dso_local global i64 0, align 8
@SH_CEU_FLAG_USE_16BIT_BUS = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_16 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sh_mobile_ceu_dev*)* @make_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_bus_param(%struct.sh_mobile_ceu_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.sh_mobile_ceu_dev* %0, %struct.sh_mobile_ceu_dev** %3, align 8
  %5 = load i64, i64* @SOCAM_MASTER, align 8
  %6 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %7 = or i64 %5, %6
  %8 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %9 = or i64 %7, %8
  %10 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %17 = or i64 %15, %16
  store i64 %17, i64* %4, align 8
  %18 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SH_CEU_FLAG_USE_8BIT_BUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %28 = load i64, i64* %4, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %3, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SH_CEU_FLAG_USE_16BIT_BUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i64, i64* @SOCAM_DATAWIDTH_16, align 8
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %51

50:                                               ; preds = %43
  store i64 0, i64* %2, align 8
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
