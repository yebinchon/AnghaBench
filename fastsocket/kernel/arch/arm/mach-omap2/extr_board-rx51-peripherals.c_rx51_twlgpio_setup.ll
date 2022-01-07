; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-rx51-peripherals.c_rx51_twlgpio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-rx51-peripherals.c_rx51_twlgpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"backlight_pwm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"speaker_en\00", align 1
@mmc = common dso_local global %struct.TYPE_6__* null, align 8
@rx51_vmmc1_supply = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@rx51_vmmc2_supply = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@rx51_vsim_supply = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @rx51_twlgpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx51_twlgpio_setup(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add i32 %7, 6
  %9 = call i32 @gpio_request(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, 6
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %13, 7
  %15 = call i32 @gpio_request(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, 7
  %18 = call i32 @gpio_direction_output(i32 %17, i32 1)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %20 = call i32 @twl4030_mmc_init(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rx51_vmmc1_supply, i32 0, i32 0), align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rx51_vmmc2_supply, i32 0, i32 0), align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rx51_vsim_supply, i32 0, i32 0), align 4
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @twl4030_mmc_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
