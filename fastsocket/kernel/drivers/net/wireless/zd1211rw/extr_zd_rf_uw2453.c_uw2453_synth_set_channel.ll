; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_uw2453.c_uw2453_synth_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_uw2453.c_uw2453_synth_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@uw2453_autocal_synth = common dso_local global i32* null, align 8
@uw2453_std_synth = common dso_local global i32* null, align 8
@RF_RV_BITS = common dso_local global i32 0, align 4
@uw2453_synth_divide = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32, i32)* @uw2453_synth_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uw2453_synth_set_channel(%struct.zd_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** @uw2453_autocal_synth, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @UW2453_REGWRITE(i32 1, i32 %20)
  store i32 %21, i32* %10, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load i32*, i32** @uw2453_std_synth, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @UW2453_REGWRITE(i32 1, i32 %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @RF_RV_BITS, align 4
  %33 = call i32 @zd_rfwrite_locked(%struct.zd_chip* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %40 = load i32*, i32** @uw2453_synth_divide, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @UW2453_REGWRITE(i32 2, i32 %44)
  %46 = load i32, i32* @RF_RV_BITS, align 4
  %47 = call i32 @zd_rfwrite_locked(%struct.zd_chip* %39, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %36
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @UW2453_REGWRITE(i32, i32) #1

declare dso_local i32 @zd_rfwrite_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
