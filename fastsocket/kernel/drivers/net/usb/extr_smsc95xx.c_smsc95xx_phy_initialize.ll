; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_phy_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_phy_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32)*, i32 }

@SMSC95XX_INTERNAL_PHY_ID = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@PHY_INT_SRC = common dso_local global i32 0, align 4
@PHY_INT_MASK = common dso_local global i32 0, align 4
@PHY_INT_MASK_DEFAULT_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"phy initialised succesfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_phy_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_phy_initialize(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %3 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %4 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 5
  store i32 %5, i32* %8, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i32 (i32, i32, i32)* @smsc95xx_mdio_read, i32 (i32, i32, i32)** %11, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 (i32, i32, i32, i32)* @smsc95xx_mdio_write, i32 (i32, i32, i32, i32)** %14, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 31, i32* %17, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 31, i32* %20, align 4
  %21 = load i32, i32* @SMSC95XX_INTERNAL_PHY_ID, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MII_BMCR, align 4
  %33 = load i32, i32* @BMCR_RESET, align 4
  %34 = call i32 @smsc95xx_mdio_write(i32 %27, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MII_ADVERTISE, align 4
  %43 = load i32, i32* @ADVERTISE_ALL, align 4
  %44 = load i32, i32* @ADVERTISE_CSMA, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @smsc95xx_mdio_write(i32 %37, i32 %41, i32 %42, i32 %49)
  %51 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PHY_INT_SRC, align 4
  %59 = call i32 @smsc95xx_mdio_read(i32 %53, i32 %57, i32 %58)
  %60 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PHY_INT_MASK, align 4
  %68 = load i32, i32* @PHY_INT_MASK_DEFAULT_, align 4
  %69 = call i32 @smsc95xx_mdio_write(i32 %62, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %71 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %70, i32 0, i32 0
  %72 = call i32 @mii_nway_restart(%struct.TYPE_2__* %71)
  %73 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %74 = call i64 @netif_msg_ifup(%struct.usbnet* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %1
  %77 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %78 = call i32 @devdbg(%struct.usbnet* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %1
  ret i32 0
}

declare dso_local i32 @smsc95xx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @smsc95xx_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_2__*) #1

declare dso_local i64 @netif_msg_ifup(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
