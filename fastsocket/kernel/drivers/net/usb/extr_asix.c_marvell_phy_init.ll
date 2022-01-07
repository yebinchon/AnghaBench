; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_marvell_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_marvell_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.asix_data = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"marvell_phy_init()\00", align 1
@MII_MARVELL_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MII_MARVELL_STATUS = 0x%04x\00", align 1
@MII_MARVELL_CTRL = common dso_local global i32 0, align 4
@MARVELL_CTRL_RXDELAY = common dso_local global i32 0, align 4
@MARVELL_CTRL_TXDELAY = common dso_local global i32 0, align 4
@MII_MARVELL_LED_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"MII_MARVELL_LED_CTRL (1) = 0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"MII_MARVELL_LED_CTRL (2) = 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @marvell_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_phy_init(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.asix_data*, align 8
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 2
  %7 = bitcast i32* %6 to %struct.asix_data*
  store %struct.asix_data* %7, %struct.asix_data** %3, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MII_MARVELL_STATUS, align 4
  %18 = call i32 @asix_mdio_read(i32 %12, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MII_MARVELL_CTRL, align 4
  %30 = load i32, i32* @MARVELL_CTRL_RXDELAY, align 4
  %31 = load i32, i32* @MARVELL_CTRL_TXDELAY, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @asix_mdio_write(i32 %24, i32 %28, i32 %29, i32 %32)
  %34 = load %struct.asix_data*, %struct.asix_data** %3, align 8
  %35 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %1
  %39 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %40 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %43 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MII_MARVELL_LED_CTRL, align 4
  %47 = call i32 @asix_mdio_read(i32 %41, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 63743
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, 257
  store i32 %54, i32* %4, align 4
  %55 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %59 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MII_MARVELL_LED_CTRL, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @asix_mdio_write(i32 %57, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MII_MARVELL_LED_CTRL, align 4
  %73 = call i32 @asix_mdio_read(i32 %67, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 64527
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @asix_mdio_read(i32, i32, i32) #1

declare dso_local i32 @asix_mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
