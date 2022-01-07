; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.mii_if_info, i64* }
%struct.mii_if_info = type { i32 }
%struct.smsc95xx_priv = type { i32, i32 }
%struct.ethtool_cmd = type { i64, i32 }

@PHY_INT_SRC = common dso_local global i32 0, align 4
@INT_STS = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"speed: %d duplex: %d lcladv: %04x rmtadv: %04x\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@MAC_CR_RCVOWN_ = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.smsc95xx_priv*, align 8
  %4 = alloca %struct.mii_if_info*, align 8
  %5 = alloca %struct.ethtool_cmd, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %15, %struct.smsc95xx_priv** %3, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  store %struct.mii_if_info* %17, %struct.mii_if_info** %4, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %22 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PHY_INT_SRC, align 4
  %25 = call i32 @smsc95xx_mdio_read(i32 %20, i32 %23, i32 %24)
  store i32 -1, i32* %9, align 4
  %26 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %27 = load i32, i32* @INT_STS, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @smsc95xx_write_reg(%struct.usbnet* %26, i32 %27, i32 %28)
  %30 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %31 = call i32 @mii_check_media(%struct.mii_if_info* %30, i32 1, i32 1)
  %32 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 1
  %34 = call i32 @mii_ethtool_gset(%struct.mii_if_info* %33, %struct.ethtool_cmd* %5)
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %39 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MII_ADVERTISE, align 4
  %42 = call i32 @smsc95xx_mdio_read(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %47 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MII_LPA, align 4
  %50 = call i32 @smsc95xx_mdio_read(i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %52 = call i64 @netif_msg_link(%struct.usbnet* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %1
  %55 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @devdbg(%struct.usbnet* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %1
  %64 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %65 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DUPLEX_FULL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = load i32, i32* @MAC_CR_FDPX_, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %76 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @MAC_CR_RCVOWN_, align 4
  %80 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %81 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %96

84:                                               ; preds = %63
  %85 = load i32, i32* @MAC_CR_RCVOWN_, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %88 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @MAC_CR_FDPX_, align 4
  %92 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %93 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %84, %72
  %97 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %98 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %102 = load i32, i32* @MAC_CR, align 4
  %103 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %104 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @smsc95xx_write_reg(%struct.usbnet* %101, i32 %102, i32 %105)
  %107 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %108 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @smsc95xx_phy_update_flowcontrol(%struct.usbnet* %107, i64 %109, i32 %110, i32 %111)
  ret i32 0
}

declare dso_local i32 @smsc95xx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @mii_check_media(%struct.mii_if_info*, i32, i32) #1

declare dso_local i32 @mii_ethtool_gset(%struct.mii_if_info*, %struct.ethtool_cmd*) #1

declare dso_local i64 @netif_msg_link(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc95xx_phy_update_flowcontrol(%struct.usbnet*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
