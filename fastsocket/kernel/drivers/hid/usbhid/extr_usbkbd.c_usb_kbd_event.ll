; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usb_kbd = type { i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EV_LED = common dso_local global i32 0, align 4
@LED_KANA = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usb_submit_urb(leds) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @usb_kbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_kbd_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_kbd*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.usb_kbd* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.usb_kbd* %12, %struct.usb_kbd** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @EV_LED, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %115

17:                                               ; preds = %4
  %18 = load i32, i32* @LED_KANA, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = shl i32 %26, 3
  %28 = load i32, i32* @LED_COMPOSE, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = shl i32 %36, 3
  %38 = or i32 %27, %37
  %39 = load i32, i32* @LED_SCROLLL, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = shl i32 %47, 2
  %49 = or i32 %38, %48
  %50 = load i32, i32* @LED_CAPSL, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @test_bit(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = shl i32 %58, 1
  %60 = or i32 %49, %59
  %61 = load i32, i32* @LED_NUML, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @test_bit(i32 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = or i32 %60, %69
  %71 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %72 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %74 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EINPROGRESS, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %115

82:                                               ; preds = %17
  %83 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %84 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %88 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %115

92:                                               ; preds = %82
  %93 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %94 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %97 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32 %95, i32* %98, align 4
  %99 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %100 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %103 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.usb_kbd*, %struct.usb_kbd** %10, align 8
  %107 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call i64 @usb_submit_urb(%struct.TYPE_2__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %92
  %113 = call i32 @err_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %92
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %91, %81, %16
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.usb_kbd* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @err_hid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
