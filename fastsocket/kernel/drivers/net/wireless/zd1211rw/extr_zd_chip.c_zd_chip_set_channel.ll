; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32 }

@CR_CONFIG_PHILIPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_set_channel(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %8 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %11 = call i32 @zd_chip_lock_phy_regs(%struct.zd_chip* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %17 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @zd_rf_set_channel(i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @update_channel_integration_and_calibration(%struct.zd_chip* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %47

30:                                               ; preds = %23
  %31 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %32 = call i32 @patch_cck_gain(%struct.zd_chip* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %47

36:                                               ; preds = %30
  %37 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @patch_6m_band_edge(%struct.zd_chip* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %45 = load i32, i32* @CR_CONFIG_PHILIPS, align 4
  %46 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %44, i32 0, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %42, %35, %29, %22
  %48 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %49 = call i32 @zd_chip_unlock_phy_regs(%struct.zd_chip* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %52, %47
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %60 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zd_chip_lock_phy_regs(%struct.zd_chip*) #1

declare dso_local i32 @zd_rf_set_channel(i32*, i32) #1

declare dso_local i32 @update_channel_integration_and_calibration(%struct.zd_chip*, i32) #1

declare dso_local i32 @patch_cck_gain(%struct.zd_chip*) #1

declare dso_local i32 @patch_6m_band_edge(%struct.zd_chip*, i32) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @zd_chip_unlock_phy_regs(%struct.zd_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
