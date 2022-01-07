; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_pcm037_eet.c_eet_init_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_pcm037_eet.c_eet_init_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCM037_EET = common dso_local global i64 0, align 8
@pcm037_eet_pins = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pcm037_eet\00", align 1
@pcm037_spi_dev = common dso_local global i32 0, align 4
@pcm037_gpio_keys_device = common dso_local global i32 0, align 4
@mxc_spi_device0 = common dso_local global i32 0, align 4
@pcm037_spi1_master = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @eet_init_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eet_init_devices() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @machine_is_pcm037()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i64 (...) @pcm037_variant()
  %6 = load i64, i64* @PCM037_EET, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %19

9:                                                ; preds = %4
  %10 = load i32, i32* @pcm037_eet_pins, align 4
  %11 = load i32, i32* @pcm037_eet_pins, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @mxc_iomux_setup_multiple_pins(i32 %10, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @pcm037_spi_dev, align 4
  %15 = load i32, i32* @pcm037_spi_dev, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @spi_register_board_info(i32 %14, i32 %16)
  %18 = call i32 @platform_device_register(i32* @pcm037_gpio_keys_device)
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @machine_is_pcm037(...) #1

declare dso_local i64 @pcm037_variant(...) #1

declare dso_local i32 @mxc_iomux_setup_multiple_pins(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spi_register_board_info(i32, i32) #1

declare dso_local i32 @platform_device_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
