; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_fast_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_fast_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_PHY_AGCCTL = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_OFDM_DIV_DIS = common dso_local global i32 0, align 4
@AR5K_PHY_RESTART = common dso_local global i32 0, align 4
@AR5K_PHY_RESTART_DIV_GC = common dso_local global i32 0, align 4
@AR5K_PHY_FAST_ANT_DIV = common dso_local global i32 0, align 4
@AR5K_PHY_FAST_ANT_DIV_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i32, i32)* @ath5k_hw_set_fast_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_set_fast_div(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %27 [
    i32 128, label %8
    i32 130, label %8
    i32 129, label %22
  ]

8:                                                ; preds = %3, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %13 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %14 = load i32, i32* @AR5K_PHY_AGCCTL_OFDM_DIV_DIS, align 4
  %15 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %12, i32 %13, i32 %14)
  br label %21

16:                                               ; preds = %8
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %18 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %19 = load i32, i32* @AR5K_PHY_AGCCTL_OFDM_DIV_DIS, align 4
  %20 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %24 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %25 = load i32, i32* @AR5K_PHY_AGCCTL_OFDM_DIV_DIS, align 4
  %26 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %23, i32 %24, i32 %25)
  br label %28

27:                                               ; preds = %3
  br label %49

28:                                               ; preds = %22, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %33 = load i32, i32* @AR5K_PHY_RESTART, align 4
  %34 = load i32, i32* @AR5K_PHY_RESTART_DIV_GC, align 4
  %35 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %32, i32 %33, i32 %34, i32 4)
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %37 = load i32, i32* @AR5K_PHY_FAST_ANT_DIV, align 4
  %38 = load i32, i32* @AR5K_PHY_FAST_ANT_DIV_EN, align 4
  %39 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %36, i32 %37, i32 %38)
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %42 = load i32, i32* @AR5K_PHY_RESTART, align 4
  %43 = load i32, i32* @AR5K_PHY_RESTART_DIV_GC, align 4
  %44 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %46 = load i32, i32* @AR5K_PHY_FAST_ANT_DIV, align 4
  %47 = load i32, i32* @AR5K_PHY_FAST_ANT_DIV_EN, align 4
  %48 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %27, %40, %31
  ret void
}

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
