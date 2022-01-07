; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_marvell_led_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_marvell_led_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MARVELL_LED_MANUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"marvell_led_status() read 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"marvell_led_status() writing 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @marvell_led_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_led_status(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MARVELL_LED_MANUAL, align 4
  %14 = call i32 @asix_mdio_read(i32 %8, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @devdbg(%struct.usbnet* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 64527
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %27 [
    i32 128, label %21
    i32 129, label %24
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, 992
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 944
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 752
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %24, %21
  %31 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @devdbg(%struct.usbnet* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MARVELL_LED_MANUAL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @asix_mdio_write(i32 %36, i32 %40, i32 %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @asix_mdio_read(i32, i32, i32) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @asix_mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
