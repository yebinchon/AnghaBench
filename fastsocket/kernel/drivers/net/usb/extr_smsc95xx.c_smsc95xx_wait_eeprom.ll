; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_wait_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_wait_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_TIMEOUT_ = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"EEPROM read operation timeout\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_wait_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_wait_eeprom(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = load i32, i32* @E2P_CMD, align 4
  %10 = call i32 @smsc95xx_read_reg(%struct.usbnet* %8, i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @E2P_CMD_BUSY_, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @E2P_CMD_TIMEOUT_, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %7
  br label %31

21:                                               ; preds = %15
  %22 = call i32 @udelay(i32 40)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @time_after(i64 %24, i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %7, label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @E2P_CMD_TIMEOUT_, align 4
  %34 = load i32, i32* @E2P_CMD_BUSY_, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %40 = call i32 @devwarn(%struct.usbnet* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
