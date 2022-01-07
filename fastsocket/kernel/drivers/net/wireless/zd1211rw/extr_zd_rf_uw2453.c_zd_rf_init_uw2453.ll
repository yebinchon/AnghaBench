; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_uw2453.c_zd_rf_init_uw2453.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_uw2453.c_zd_rf_init_uw2453.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32*, i64, i32, i32, i32, i32, i32, i32 }

@uw2453_init_hw = common dso_local global i32 0, align 4
@uw2453_set_channel = common dso_local global i32 0, align 4
@uw2453_switch_radio_on = common dso_local global i32 0, align 4
@uw2453_switch_radio_off = common dso_local global i32 0, align 4
@zd_rf_generic_patch_6m = common dso_local global i32 0, align 4
@uw2453_clear = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rf_init_uw2453(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %4 = load i32, i32* @uw2453_init_hw, align 4
  %5 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %6 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %5, i32 0, i32 7
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @uw2453_set_channel, align 4
  %8 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %9 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @uw2453_switch_radio_on, align 4
  %11 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %12 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @uw2453_switch_radio_off, align 4
  %14 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %15 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @zd_rf_generic_patch_6m, align 4
  %17 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %18 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @uw2453_clear, align 4
  %20 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %21 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %23 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmalloc(i32 4, i32 %24)
  %26 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %27 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %29 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
