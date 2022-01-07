; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32, %struct.phy_device*, i64, i32, i32, %struct.TYPE_3__* }
%struct.phy_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i8* null, align 8
@PHY_DOWN = common dso_local global i32 0, align 4
@sh_eth_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"phy_connect failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"attached phy %i to driver %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_phy_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.sh_eth_private* %10, %struct.sh_eth_private** %4, align 8
  %11 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %12 = add nsw i32 %11, 3
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store %struct.phy_device* null, %struct.phy_device** %7, align 8
  %16 = trunc i64 %13 to i32
  %17 = load i8*, i8** @PHY_ID_FMT, align 8
  %18 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %19 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %18, i32 0, i32 5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %24 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snprintf(i8* %15, i32 %16, i8* %17, i32 %22, i32 %25)
  %27 = load i32, i32* @PHY_DOWN, align 4
  %28 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %29 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %31 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %33 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %36 = call %struct.phy_device* @phy_connect(%struct.net_device* %34, i8* %15, i32* @sh_eth_adjust_link, i32 0, i32 %35)
  store %struct.phy_device* %36, %struct.phy_device** %7, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %38 = call i64 @IS_ERR(%struct.phy_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %45 = call i32 @PTR_ERR(%struct.phy_device* %44)
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

46:                                               ; preds = %1
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56)
  %58 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %59 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %60 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %59, i32 0, i32 1
  store %struct.phy_device* %58, %struct.phy_device** %60, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %46, %40
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
