; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_b43_lpphy_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_b43_lpphy_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_LPPHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_DDFS = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_lpphy_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_lpphy_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %16 = call i32 @b43_phy_mask(%struct.b43_wldev* %14, i32 %15, i32 33791)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %19 = call i32 @b43_phy_set(%struct.b43_wldev* %17, i32 %18, i32 7936)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %22 = call i32 @b43_phy_mask(%struct.b43_wldev* %20, i32 %21, i32 33023)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %25 = call i32 @b43_phy_mask(%struct.b43_wldev* %23, i32 %24, i32 57343)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %28 = call i32 @b43_phy_set(%struct.b43_wldev* %26, i32 %27, i32 2056)
  br label %42

29:                                               ; preds = %7
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %32 = call i32 @b43_phy_mask(%struct.b43_wldev* %30, i32 %31, i32 57599)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %35 = call i32 @b43_phy_set(%struct.b43_wldev* %33, i32 %34, i32 7936)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %38 = call i32 @b43_phy_mask(%struct.b43_wldev* %36, i32 %37, i32 64767)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %41 = call i32 @b43_phy_set(%struct.b43_wldev* %39, i32 %40, i32 24)
  br label %42

42:                                               ; preds = %29, %13
  br label %61

43:                                               ; preds = %2
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %46 = call i32 @b43_phy_mask(%struct.b43_wldev* %44, i32 %45, i32 57599)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %55 = call i32 @b43_phy_mask(%struct.b43_wldev* %53, i32 %54, i32 63479)
  br label %60

56:                                               ; preds = %43
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %59 = call i32 @b43_phy_mask(%struct.b43_wldev* %57, i32 %58, i32 65511)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %42
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
