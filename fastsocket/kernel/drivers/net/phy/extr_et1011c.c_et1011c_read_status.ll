; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_et1011c.c_et1011c_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_et1011c.c_et1011c_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@et1011c_read_status.speed = internal global i32 0, align 4
@ET1011C_STATUS_REG = common dso_local global i32 0, align 4
@ET1011C_SPEED_MASK = common dso_local global i32 0, align 4
@ET1011C_GIGABIT_SPEED = common dso_local global i32 0, align 4
@ET1011C_CONFIG_REG = common dso_local global i32 0, align 4
@ET1011C_TX_FIFO_MASK = common dso_local global i32 0, align 4
@ET1011C_GMII_INTERFACE = common dso_local global i32 0, align 4
@ET1011C_SYS_CLK_EN = common dso_local global i32 0, align 4
@ET1011C_TX_FIFO_DEPTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @et1011c_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et1011c_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = call i32 @genphy_read_status(%struct.phy_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @et1011c_read_status.speed, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @et1011c_read_status.speed, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = load i32, i32* @ET1011C_STATUS_REG, align 4
  %18 = call i32 @phy_read(%struct.phy_device* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ET1011C_SPEED_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ET1011C_GIGABIT_SPEED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %12
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = load i32, i32* @ET1011C_CONFIG_REG, align 4
  %27 = call i32 @phy_read(%struct.phy_device* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @ET1011C_TX_FIFO_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %33 = load i32, i32* @ET1011C_CONFIG_REG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ET1011C_GMII_INTERFACE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ET1011C_SYS_CLK_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ET1011C_TX_FIFO_DEPTH_16, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @phy_write(%struct.phy_device* %32, i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %24, %12
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
