; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_validate_ccdc_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_validate_ccdc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_config_params_raw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@CCDC_GAMMA_BITS_09_0 = common dso_local global i64 0, align 8
@CCDC_GAMMA_BITS_15_6 = common dso_local global i64 0, align 8
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0AInvalid data line select\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdc_config_params_raw*)* @validate_ccdc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ccdc_param(%struct.ccdc_config_params_raw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccdc_config_params_raw*, align 8
  store %struct.ccdc_config_params_raw* %0, %struct.ccdc_config_params_raw** %3, align 8
  %4 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %5 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %11 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CCDC_GAMMA_BITS_09_0, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %9
  %17 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %18 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CCDC_GAMMA_BITS_15_6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %25 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %29 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23, %16, %9
  %33 = load i32, i32* @dev, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
