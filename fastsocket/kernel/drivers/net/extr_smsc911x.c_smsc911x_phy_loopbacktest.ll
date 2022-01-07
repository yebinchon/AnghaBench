; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_loopbacktest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_loopbacktest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i8*, i32, i32, i64, %struct.phy_device* }
%struct.phy_device = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@HW_CFG = common dso_local global i32 0, align 4
@HW_CFG_TX_FIF_SZ_ = common dso_local global i32 0, align 4
@HW_CFG_SF_ = common dso_local global i32 0, align 4
@TX_CFG = common dso_local global i32 0, align 4
@TX_CFG_TX_ON_ = common dso_local global i32 0, align 4
@RX_CFG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@MAC_CR_TXEN_ = common dso_local global i32 0, align 4
@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc911x_phy_loopbacktest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_loopbacktest(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %9)
  store %struct.smsc911x_data* %10, %struct.smsc911x_data** %3, align 8
  %11 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %12 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %11, i32 0, i32 4
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %4, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %17 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memset(i8* %18, i32 255, i32 %19)
  store i32 6, i32* %6, align 4
  br label %21

21:                                               ; preds = %33, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 12
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = trunc i32 %25 to i8
  %27 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %28 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %26, i8* %32, align 1
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %38 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 12
  store i8 0, i8* %40, align 1
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %42 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 13
  store i8 0, i8* %44, align 1
  store i32 14, i32* %6, align 4
  br label %45

45:                                               ; preds = %58, %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = trunc i32 %50 to i8
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %53 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %51, i8* %57, align 1
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %45

61:                                               ; preds = %45
  %62 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %63 = load i32, i32* @HW_CFG, align 4
  %64 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @HW_CFG_TX_FIF_SZ_, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @HW_CFG_SF_, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %72 = load i32, i32* @HW_CFG, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %71, i32 %72, i32 %73)
  %75 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %76 = load i32, i32* @TX_CFG, align 4
  %77 = load i32, i32* @TX_CFG_TX_ON_, align 4
  %78 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %75, i32 %76, i32 %77)
  %79 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %80 = load i32, i32* @RX_CFG, align 4
  %81 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %82 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 3
  %86 = shl i32 %85, 8
  %87 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %79, i32 %80, i32 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %141, %61
  %89 = load i32, i32* %6, align 4
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %144

91:                                               ; preds = %88
  %92 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MII_BMCR, align 4
  %99 = load i32, i32* @BMCR_LOOPBACK, align 4
  %100 = load i32, i32* @BMCR_FULLDPLX, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @smsc911x_mii_write(i32 %94, i32 %97, i32 %98, i32 %101)
  %103 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %104 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %103, i32 0, i32 1
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %108 = load i32, i32* @MAC_CR, align 4
  %109 = load i32, i32* @MAC_CR_FDPX_, align 4
  %110 = load i32, i32* @MAC_CR_TXEN_, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MAC_CR_RXEN_, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %107, i32 %108, i32 %113)
  %115 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %116 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %115, i32 0, i32 1
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %120 = call i64 @smsc911x_phy_check_loopbackpkt(%struct.smsc911x_data* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %144

123:                                              ; preds = %91
  %124 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %125 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %129 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %128, i32 0, i32 1
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @spin_lock_irqsave(i32* %129, i64 %130)
  %132 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %133 = load i32, i32* @MAC_CR, align 4
  %134 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %132, i32 %133, i32 0)
  %135 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %136 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %135, i32 0, i32 1
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %140 = call i32 @smsc911x_phy_reset(%struct.smsc911x_data* %139)
  br label %141

141:                                              ; preds = %123
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %88

144:                                              ; preds = %122, %88
  %145 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %146 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %145, i32 0, i32 1
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %150 = load i32, i32* @MAC_CR, align 4
  %151 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %149, i32 %150, i32 0)
  %152 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %153 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %152, i32 0, i32 1
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %157 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %160 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MII_BMCR, align 4
  %163 = call i32 @smsc911x_mii_write(i32 %158, i32 %161, i32 %162, i32 0)
  %164 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %165 = load i32, i32* @TX_CFG, align 4
  %166 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %164, i32 %165, i32 0)
  %167 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %168 = load i32, i32* @RX_CFG, align 4
  %169 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %167, i32 %168, i32 0)
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smsc911x_mii_write(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @smsc911x_phy_check_loopbackpkt(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_phy_reset(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
