; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w90p910_ether = type { i64, %struct.platform_device* }
%struct.platform_device = type { i32 }

@PHYBUSY = common dso_local global i32 0, align 4
@MDCCR_VAL = common dso_local global i32 0, align 4
@REG_MIIDA = common dso_local global i64 0, align 8
@DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mdio read timed out\0A\00", align 1
@REG_MIID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @w90p910_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.w90p910_ether*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %12)
  store %struct.w90p910_ether* %13, %struct.w90p910_ether** %7, align 8
  %14 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %15 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %14, i32 0, i32 1
  %16 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  store %struct.platform_device* %16, %struct.platform_device** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 8
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @PHYBUSY, align 4
  %22 = load i32, i32* @MDCCR_VAL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %28 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_MIIDA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @__raw_writel(i32 %26, i64 %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %49, %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DELAY, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %39 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_MIIDA, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_readl(i64 %42)
  %44 = load i32, i32* @PHYBUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %33

52:                                               ; preds = %47, %33
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DELAY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 65535, i32* %11, align 4
  br label %67

60:                                               ; preds = %52
  %61 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %62 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REG_MIID, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @__raw_readl(i64 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %56
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
