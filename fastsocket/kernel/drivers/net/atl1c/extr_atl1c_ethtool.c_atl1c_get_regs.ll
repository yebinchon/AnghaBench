; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.atl1c_adapter = type { %struct.atl1c_hw }
%struct.atl1c_hw = type { i32 }

@AT_REGS_LEN = common dso_local global i32 0, align 4
@REG_PM_CTRL = common dso_local global i64 0, align 8
@REG_MAC_HALF_DUPLX_CTRL = common dso_local global i64 0, align 8
@REG_TWSI_CTRL = common dso_local global i64 0, align 8
@REG_PCIE_DEV_MISC_CTRL = common dso_local global i64 0, align 8
@REG_MASTER_CTRL = common dso_local global i64 0, align 8
@REG_MANUAL_TIMER_INIT = common dso_local global i64 0, align 8
@REG_IRQ_MODRT_TIMER_INIT = common dso_local global i64 0, align 8
@REG_GPHY_CTRL = common dso_local global i64 0, align 8
@REG_LINK_CTRL = common dso_local global i64 0, align 8
@REG_IDLE_STATUS = common dso_local global i64 0, align 8
@REG_MDIO_CTRL = common dso_local global i64 0, align 8
@REG_SERDES = common dso_local global i64 0, align 8
@REG_MAC_CTRL = common dso_local global i64 0, align 8
@REG_MAC_IPG_IFG = common dso_local global i64 0, align 8
@REG_MAC_STA_ADDR = common dso_local global i64 0, align 8
@REG_RX_HASH_TABLE = common dso_local global i64 0, align 8
@REG_RXQ_CTRL = common dso_local global i64 0, align 8
@REG_TXQ_CTRL = common dso_local global i64 0, align 8
@REG_MTU = common dso_local global i64 0, align 8
@REG_WOL_CTRL = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @atl1c_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.atl1c_adapter*, align 8
  %8 = alloca %struct.atl1c_hw*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl1c_adapter* %12, %struct.atl1c_adapter** %7, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 0
  store %struct.atl1c_hw* %14, %struct.atl1c_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @AT_REGS_LEN, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %23 = load i64, i64* @REG_PM_CTRL, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  %26 = ptrtoint i8* %24 to i32
  %27 = call i32 @AT_READ_REG(%struct.atl1c_hw* %22, i64 %23, i32 %26)
  %28 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %29 = load i64, i64* @REG_MAC_HALF_DUPLX_CTRL, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = ptrtoint i8* %30 to i32
  %33 = call i32 @AT_READ_REG(%struct.atl1c_hw* %28, i64 %29, i32 %32)
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %35 = load i64, i64* @REG_TWSI_CTRL, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i32
  %39 = call i32 @AT_READ_REG(%struct.atl1c_hw* %34, i64 %35, i32 %38)
  %40 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %41 = load i64, i64* @REG_PCIE_DEV_MISC_CTRL, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i32
  %45 = call i32 @AT_READ_REG(%struct.atl1c_hw* %40, i64 %41, i32 %44)
  %46 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %47 = load i64, i64* @REG_MASTER_CTRL, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  %50 = ptrtoint i8* %48 to i32
  %51 = call i32 @AT_READ_REG(%struct.atl1c_hw* %46, i64 %47, i32 %50)
  %52 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %53 = load i64, i64* @REG_MANUAL_TIMER_INIT, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i32
  %57 = call i32 @AT_READ_REG(%struct.atl1c_hw* %52, i64 %53, i32 %56)
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %59 = load i64, i64* @REG_IRQ_MODRT_TIMER_INIT, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i32
  %63 = call i32 @AT_READ_REG(%struct.atl1c_hw* %58, i64 %59, i32 %62)
  %64 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %65 = load i64, i64* @REG_GPHY_CTRL, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i32
  %69 = call i32 @AT_READ_REG(%struct.atl1c_hw* %64, i64 %65, i32 %68)
  %70 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %71 = load i64, i64* @REG_LINK_CTRL, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  %74 = ptrtoint i8* %72 to i32
  %75 = call i32 @AT_READ_REG(%struct.atl1c_hw* %70, i64 %71, i32 %74)
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %77 = load i64, i64* @REG_IDLE_STATUS, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  %80 = ptrtoint i8* %78 to i32
  %81 = call i32 @AT_READ_REG(%struct.atl1c_hw* %76, i64 %77, i32 %80)
  %82 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %83 = load i64, i64* @REG_MDIO_CTRL, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = ptrtoint i8* %84 to i32
  %87 = call i32 @AT_READ_REG(%struct.atl1c_hw* %82, i64 %83, i32 %86)
  %88 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %89 = load i64, i64* @REG_SERDES, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  %92 = ptrtoint i8* %90 to i32
  %93 = call i32 @AT_READ_REG(%struct.atl1c_hw* %88, i64 %89, i32 %92)
  %94 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %95 = load i64, i64* @REG_MAC_CTRL, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  %98 = ptrtoint i8* %96 to i32
  %99 = call i32 @AT_READ_REG(%struct.atl1c_hw* %94, i64 %95, i32 %98)
  %100 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %101 = load i64, i64* @REG_MAC_IPG_IFG, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = ptrtoint i8* %102 to i32
  %105 = call i32 @AT_READ_REG(%struct.atl1c_hw* %100, i64 %101, i32 %104)
  %106 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %107 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  %110 = ptrtoint i8* %108 to i32
  %111 = call i32 @AT_READ_REG(%struct.atl1c_hw* %106, i64 %107, i32 %110)
  %112 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %113 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %114 = add nsw i64 %113, 4
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  %117 = ptrtoint i8* %115 to i32
  %118 = call i32 @AT_READ_REG(%struct.atl1c_hw* %112, i64 %114, i32 %117)
  %119 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %120 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  %123 = ptrtoint i8* %121 to i32
  %124 = call i32 @AT_READ_REG(%struct.atl1c_hw* %119, i64 %120, i32 %123)
  %125 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %126 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %127 = add nsw i64 %126, 4
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  %130 = ptrtoint i8* %128 to i32
  %131 = call i32 @AT_READ_REG(%struct.atl1c_hw* %125, i64 %127, i32 %130)
  %132 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %133 = load i64, i64* @REG_RXQ_CTRL, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  %136 = ptrtoint i8* %134 to i32
  %137 = call i32 @AT_READ_REG(%struct.atl1c_hw* %132, i64 %133, i32 %136)
  %138 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %139 = load i64, i64* @REG_TXQ_CTRL, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %6, align 8
  %142 = ptrtoint i8* %140 to i32
  %143 = call i32 @AT_READ_REG(%struct.atl1c_hw* %138, i64 %139, i32 %142)
  %144 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %145 = load i64, i64* @REG_MTU, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %6, align 8
  %148 = ptrtoint i8* %146 to i32
  %149 = call i32 @AT_READ_REG(%struct.atl1c_hw* %144, i64 %145, i32 %148)
  %150 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %151 = load i64, i64* @REG_WOL_CTRL, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %6, align 8
  %154 = ptrtoint i8* %152 to i32
  %155 = call i32 @AT_READ_REG(%struct.atl1c_hw* %150, i64 %151, i32 %154)
  %156 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %157 = load i32, i32* @MII_BMCR, align 4
  %158 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %156, i32 %157, i64* %10)
  %159 = load i64, i64* %10, align 8
  %160 = load i64*, i64** %9, align 8
  %161 = load i32, i32* @AT_REGS_LEN, align 4
  %162 = sext i32 %161 to i64
  %163 = udiv i64 %162, 8
  %164 = sub i64 %163, 2
  %165 = getelementptr inbounds i64, i64* %160, i64 %164
  store i64 %159, i64* %165, align 8
  %166 = load %struct.atl1c_hw*, %struct.atl1c_hw** %8, align 8
  %167 = load i32, i32* @MII_BMSR, align 4
  %168 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %166, i32 %167, i64* %10)
  %169 = load i64, i64* %10, align 8
  %170 = load i64*, i64** %9, align 8
  %171 = load i32, i32* @AT_REGS_LEN, align 4
  %172 = sext i32 %171 to i64
  %173 = udiv i64 %172, 8
  %174 = sub i64 %173, 1
  %175 = getelementptr inbounds i64, i64* %170, i64 %174
  store i64 %169, i64* %175, align 8
  ret void
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i64, i32) #1

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
