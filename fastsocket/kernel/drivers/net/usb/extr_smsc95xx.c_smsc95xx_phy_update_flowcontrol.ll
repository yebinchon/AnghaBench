; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_phy_update_flowcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_phy_update_flowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@AFC_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"error reading AFC_CFG\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@FLOW_CTRL_RX = common dso_local global i64 0, align 8
@FLOW_CTRL_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"rx pause %s, tx pause %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"half duplex\00", align 1
@FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i64, i32, i32)* @smsc95xx_phy_update_flowcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc95xx_phy_update_flowcontrol(%struct.usbnet* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = load i32, i32* @AFC_CFG, align 4
  %15 = call i32 @smsc95xx_read_reg(%struct.usbnet* %13, i32 %14, i32* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %20 = call i32 @devwarn(%struct.usbnet* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %85

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @DUPLEX_FULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @mii_resolve_flowctrl_fdx(i32 %26, i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @FLOW_CTRL_RX, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -65534, i32* %9, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @FLOW_CTRL_TX, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, 15
  store i32 %42, i32* %10, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, -16
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %48 = call i64 @netif_msg_link(%struct.usbnet* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @FLOW_CTRL_RX, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @FLOW_CTRL_TX, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %63)
  br label %65

65:                                               ; preds = %50, %46
  br label %76

66:                                               ; preds = %21
  %67 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %68 = call i64 @netif_msg_link(%struct.usbnet* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %72 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  store i32 0, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, 15
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %78 = load i32, i32* @FLOW, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @smsc95xx_write_reg(%struct.usbnet* %77, i32 %78, i32 %79)
  %81 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %82 = load i32, i32* @AFC_CFG, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @smsc95xx_write_reg(%struct.usbnet* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %18
  ret void
}

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*) #1

declare dso_local i64 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i64 @netif_msg_link(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
