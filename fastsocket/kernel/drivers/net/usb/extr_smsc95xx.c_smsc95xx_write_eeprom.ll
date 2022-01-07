; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_write_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@E2P_CMD_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_EWEN_ = common dso_local global i32 0, align 4
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@E2P_CMD_WRITE_ = common dso_local global i32 0, align 4
@E2P_CMD_ADDR_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32*)* @smsc95xx_write_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_write_eeprom(%struct.usbnet* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %14 = icmp ne %struct.usbnet* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %24 = call i32 @smsc95xx_eeprom_confirm_not_busy(%struct.usbnet* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %82

29:                                               ; preds = %4
  %30 = load i32, i32* @E2P_CMD_BUSY_, align 4
  %31 = load i32, i32* @E2P_CMD_EWEN_, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %34 = load i32, i32* @E2P_CMD, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @smsc95xx_write_reg(%struct.usbnet* %33, i32 %34, i32 %35)
  %37 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %38 = call i32 @smsc95xx_wait_eeprom(%struct.usbnet* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %82

43:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %55 = load i32, i32* @E2P_DATA, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @smsc95xx_write_reg(%struct.usbnet* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @E2P_CMD_BUSY_, align 4
  %59 = load i32, i32* @E2P_CMD_WRITE_, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @E2P_CMD_ADDR_, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %60, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %66 = load i32, i32* @E2P_CMD, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @smsc95xx_write_reg(%struct.usbnet* %65, i32 %66, i32 %67)
  %69 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %70 = call i32 @smsc95xx_wait_eeprom(%struct.usbnet* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %48
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %82

75:                                               ; preds = %48
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %44

81:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %73, %41, %27
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smsc95xx_eeprom_confirm_not_busy(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @smsc95xx_wait_eeprom(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
