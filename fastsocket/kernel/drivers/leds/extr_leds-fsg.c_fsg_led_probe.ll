; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-fsg.c_fsg_led_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-fsg.c_fsg_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@latch_address = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@latch_value = common dso_local global i32 0, align 4
@fsg_wlan_led = common dso_local global i32 0, align 4
@fsg_wan_led = common dso_local global i32 0, align 4
@fsg_sata_led = common dso_local global i32 0, align 4
@fsg_usb_led = common dso_local global i32 0, align 4
@fsg_sync_led = common dso_local global i32 0, align 4
@fsg_ring_led = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsg_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 @IXP4XX_EXP_BUS_BASE(i32 2)
  %6 = call i64 @ioremap(i32 %5, i32 512)
  %7 = inttoptr i64 %6 to i16*
  %8 = bitcast i16* %7 to i32*
  store i32* %8, i32** @latch_address, align 8
  %9 = load i32*, i32** @latch_address, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %73

14:                                               ; preds = %1
  store i32 65535, i32* @latch_value, align 4
  %15 = load i32, i32* @latch_value, align 4
  %16 = load i32*, i32** @latch_address, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @led_classdev_register(i32* %18, i32* @fsg_wlan_led)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %70

23:                                               ; preds = %14
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @led_classdev_register(i32* %25, i32* @fsg_wan_led)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %68

30:                                               ; preds = %23
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @led_classdev_register(i32* %32, i32* @fsg_sata_led)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %66

37:                                               ; preds = %30
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @led_classdev_register(i32* %39, i32* @fsg_usb_led)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %64

44:                                               ; preds = %37
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @led_classdev_register(i32* %46, i32* @fsg_sync_led)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %62

51:                                               ; preds = %44
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @led_classdev_register(i32* %53, i32* @fsg_ring_led)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %57
  %61 = call i32 @led_classdev_unregister(i32* @fsg_sync_led)
  br label %62

62:                                               ; preds = %60, %50
  %63 = call i32 @led_classdev_unregister(i32* @fsg_usb_led)
  br label %64

64:                                               ; preds = %62, %43
  %65 = call i32 @led_classdev_unregister(i32* @fsg_sata_led)
  br label %66

66:                                               ; preds = %64, %36
  %67 = call i32 @led_classdev_unregister(i32* @fsg_wan_led)
  br label %68

68:                                               ; preds = %66, %29
  %69 = call i32 @led_classdev_unregister(i32* @fsg_wlan_led)
  br label %70

70:                                               ; preds = %68, %22
  %71 = load i32*, i32** @latch_address, align 8
  %72 = call i32 @iounmap(i32* %71)
  br label %73

73:                                               ; preds = %70, %11
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %58
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @IXP4XX_EXP_BUS_BASE(i32) #1

declare dso_local i32 @led_classdev_register(i32*, i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
