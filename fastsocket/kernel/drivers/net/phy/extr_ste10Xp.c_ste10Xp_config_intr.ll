; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_ste10Xp.c_ste10Xp_config_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_ste10Xp.c_ste10Xp_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MII_XIE = common dso_local global i32 0, align 4
@MII_XIE_DEFAULT_MASK = common dso_local global i32 0, align 4
@MII_XCIIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ste10Xp_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste10Xp_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = load i32, i32* @MII_XIE, align 4
  %13 = load i32, i32* @MII_XIE_DEFAULT_MASK, align 4
  %14 = call i32 @phy_write(%struct.phy_device* %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = load i32, i32* @MII_XCIIS, align 4
  %20 = call i32 @phy_read(%struct.phy_device* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %17
  br label %26

26:                                               ; preds = %25, %10
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = load i32, i32* @MII_XIE, align 4
  %30 = call i32 @phy_write(%struct.phy_device* %28, i32 %29, i32 0)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
