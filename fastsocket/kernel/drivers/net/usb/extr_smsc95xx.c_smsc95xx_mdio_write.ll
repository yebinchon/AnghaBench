; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"MII is busy in smsc95xx_mdio_write\00", align 1
@MII_DATA = common dso_local global i32 0, align 4
@MII_WRITE_ = common dso_local global i32 0, align 4
@MII_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Timed out writing MII reg %02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @smsc95xx_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc95xx_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.usbnet* @netdev_priv(%struct.net_device* %12)
  store %struct.usbnet* %13, %struct.usbnet** %9, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %18 = call i64 @smsc95xx_phy_wait_not_busy(%struct.usbnet* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %22 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %66

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %29 = load i32, i32* @MII_DATA, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @smsc95xx_write_reg(%struct.usbnet* %28, i32 %29, i32 %30)
  %32 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %44, 11
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 6
  %48 = or i32 %45, %47
  %49 = load i32, i32* @MII_WRITE_, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %52 = load i32, i32* @MII_ADDR, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @smsc95xx_write_reg(%struct.usbnet* %51, i32 %52, i32 %53)
  %55 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %56 = call i64 @smsc95xx_phy_wait_not_busy(%struct.usbnet* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %26
  %59 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %26
  %63 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %20
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @smsc95xx_phy_wait_not_busy(%struct.usbnet*) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
