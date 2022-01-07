; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_get_line_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_get_line_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.ccdc_config_params_raw }
%struct.TYPE_7__ = type { i32 }
%struct.ccdc_config_params_raw = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ccdc_hw_params_raw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ccdc_if_type = common dso_local global i64 0, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@CCDC_DATA_8BITS = common dso_local global i64 0, align 8
@ccdc_hw_params_ycbcr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ccdc_get_line_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_get_line_length() #0 {
  %1 = alloca %struct.ccdc_config_params_raw*, align 8
  %2 = alloca i32, align 4
  store %struct.ccdc_config_params_raw* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_hw_params_raw, i32 0, i32 1), %struct.ccdc_config_params_raw** %1, align 8
  %3 = load i64, i64* @ccdc_if_type, align 8
  %4 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %0
  %7 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %1, align 8
  %8 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %1, align 8
  %14 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CCDC_DATA_8BITS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %6
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_hw_params_raw, i32 0, i32 0, i32 0), align 8
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_hw_params_raw, i32 0, i32 0, i32 0), align 8
  %22 = mul i32 %21, 2
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %18
  br label %27

24:                                               ; preds = %0
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ccdc_hw_params_ycbcr, i32 0, i32 0, i32 0), align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ALIGN(i32 %28, i32 32)
  ret i32 %29
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
