; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"MII is busy in smsc95xx_mdio_read\00", align 1
@EIO = common dso_local global i32 0, align 4
@MII_READ_ = common dso_local global i32 0, align 4
@MII_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Timed out reading MII reg %02X\00", align 1
@MII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @smsc95xx_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.usbnet* @netdev_priv(%struct.net_device* %11)
  store %struct.usbnet* %12, %struct.usbnet** %8, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %17 = call i64 @smsc95xx_phy_wait_not_busy(%struct.usbnet* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %21 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, 11
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 6
  %44 = or i32 %41, %43
  %45 = load i32, i32* @MII_READ_, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %48 = load i32, i32* @MII_ADDR, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @smsc95xx_write_reg(%struct.usbnet* %47, i32 %48, i32 %49)
  %51 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %52 = call i64 @smsc95xx_phy_wait_not_busy(%struct.usbnet* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %27
  %55 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %59 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %27
  %64 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %65 = load i32, i32* @MII_DATA, align 4
  %66 = call i32 @smsc95xx_read_reg(%struct.usbnet* %64, i32 %65, i32* %9)
  %67 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 65535
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %54, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @smsc95xx_phy_wait_not_busy(%struct.usbnet*) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
