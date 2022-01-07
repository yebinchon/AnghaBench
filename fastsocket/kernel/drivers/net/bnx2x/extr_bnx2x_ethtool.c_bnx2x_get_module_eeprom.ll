; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot access eeprom when the interface is down\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed reading A0 section\0A\00", align 1
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed reading A2 section\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnx2x_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %8, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %23 = call i32 @bnx2x_is_nvm_accessible(%struct.bnx2x* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %27 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @DP(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %143

32:                                               ; preds = %3
  %33 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %34 = call i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %39, %42
  %44 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub i32 %47, %48
  store i32 %49, i32* %13, align 4
  br label %54

50:                                               ; preds = %38
  %51 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %56 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 0
  %66 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @bnx2x_read_sfp_module_eeprom(i32* %63, %struct.TYPE_2__* %65, i32 %66, i32 %67, i32 %68, i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %72 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %54
  %76 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %77 = call i32 @DP(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %143

80:                                               ; preds = %54
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %80, %32
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %91 = icmp uge i32 %89, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %141

96:                                               ; preds = %92
  %97 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %98 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub i32 %99, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add i32 %102, %103
  %105 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub i32 %108, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %107, %96
  %112 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %116 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %115)
  %117 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 0
  %126 = load i32, i32* @I2C_DEV_ADDR_A2, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @bnx2x_read_sfp_module_eeprom(i32* %123, %struct.TYPE_2__* %125, i32 %126, i32 %127, i32 %128, i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %132 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %131)
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %111
  %136 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %137 = call i32 @DP(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %143

140:                                              ; preds = %111
  br label %141

141:                                              ; preds = %140, %92, %88
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %135, %75, %25
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_is_nvm_accessible(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_sfp_module_eeprom(i32*, %struct.TYPE_2__*, i32, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
