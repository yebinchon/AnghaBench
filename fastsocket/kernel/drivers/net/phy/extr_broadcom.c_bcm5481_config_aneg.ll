; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm5481_config_aneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm5481_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm5481_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5481_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = call i32 @genphy_config_aneg(%struct.phy_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  store i32 28679, i32* %4, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @phy_write(%struct.phy_device* %13, i32 24, i32 %14)
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = call i32 @phy_read(%struct.phy_device* %16, i32 24)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, 256
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 32768
  store i32 %21, i32* %4, align 4
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @phy_write(%struct.phy_device* %22, i32 24, i32 %23)
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @genphy_config_aneg(%struct.phy_device*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
