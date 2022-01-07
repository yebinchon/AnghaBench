; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@E2P_CMD_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_READ_ = common dso_local global i32 0, align 4
@E2P_CMD_ADDR_ = common dso_local global i32 0, align 4
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32*)* @smsc95xx_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_read_eeprom(%struct.usbnet* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  br label %68

29:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i32, i32* @E2P_CMD_BUSY_, align 4
  %36 = load i32, i32* @E2P_CMD_READ_, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @E2P_CMD_ADDR_, align 4
  %40 = and i32 %38, %39
  %41 = or i32 %37, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %43 = load i32, i32* @E2P_CMD, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @smsc95xx_write_reg(%struct.usbnet* %42, i32 %43, i32 %44)
  %46 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %47 = call i32 @smsc95xx_wait_eeprom(%struct.usbnet* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %68

52:                                               ; preds = %34
  %53 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %54 = load i32, i32* @E2P_DATA, align 4
  %55 = call i32 @smsc95xx_read_reg(%struct.usbnet* %53, i32 %54, i32* %10)
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %30

67:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %50, %27
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smsc95xx_eeprom_confirm_not_busy(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @smsc95xx_wait_eeprom(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
