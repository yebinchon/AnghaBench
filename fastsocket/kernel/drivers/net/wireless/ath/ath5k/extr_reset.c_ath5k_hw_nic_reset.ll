; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_nic_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_nic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_RXDP = common dso_local global i32 0, align 4
@AR5K_RESET_CTL = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_RESET_CTL_PCU = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_DMA = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_MAC = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_PHY = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_BASEBAND = common dso_local global i32 0, align 4
@AR5K_INIT_CFG = common dso_local global i32 0, align 4
@AR5K_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_hw_nic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_nic_reset(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ -1, %11 ]
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %15 = load i32, i32* @AR5K_RXDP, align 4
  %16 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %14, i32 %15)
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AR5K_RESET_CTL, align 4
  %20 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %17, i32 %18, i32 %19)
  %21 = call i32 @usleep_range(i32 15, i32 20)
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AR5K_AR5210, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %12
  %28 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %29 = load i32, i32* @AR5K_RESET_CTL_DMA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AR5K_RESET_CTL_MAC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @AR5K_RESET_CTL_PHY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %38 = load i32, i32* @AR5K_RESET_CTL_DMA, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AR5K_RESET_CTL_MAC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AR5K_RESET_CTL_PHY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %57

46:                                               ; preds = %12
  %47 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %48 = load i32, i32* @AR5K_RESET_CTL_BASEBAND, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %53 = load i32, i32* @AR5K_RESET_CTL_BASEBAND, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %46, %27
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %59 = load i32, i32* @AR5K_RESET_CTL, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ath5k_hw_register_timeout(%struct.ath5k_hw* %58, i32 %59, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %69 = load i32, i32* @AR5K_INIT_CFG, align 4
  %70 = load i32, i32* @AR5K_CFG, align 4
  %71 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %57
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ath5k_hw_register_timeout(%struct.ath5k_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
