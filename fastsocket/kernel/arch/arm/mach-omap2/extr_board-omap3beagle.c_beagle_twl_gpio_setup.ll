; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-omap3beagle.c_beagle_twl_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-omap3beagle.c_beagle_twl_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }

@system_rev = common dso_local global i32 0, align 4
@AG9_34XX_GPIO23 = common dso_local global i32 0, align 4
@mmc = common dso_local global %struct.TYPE_6__* null, align 8
@AH8_34XX_GPIO29 = common dso_local global i32 0, align 4
@beagle_vmmc1_supply = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@beagle_vsim_supply = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"EHCI_nOC\00", align 1
@TWL4030_GPIO_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"nEN_USB_PWR\00", align 1
@gpio_leds = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @beagle_twl_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beagle_twl_gpio_setup(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @system_rev, align 4
  %8 = icmp sge i32 %7, 32
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i32, i32* @system_rev, align 4
  %11 = icmp sle i32 %10, 875565056
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @AG9_34XX_GPIO23, align 4
  %14 = call i32 @omap_cfg_reg(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 23, i32* %17, align 4
  br label %21

18:                                               ; preds = %9, %3
  %19 = load i32, i32* @AH8_34XX_GPIO29, align 4
  %20 = call i32 @omap_cfg_reg(i32 %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %28 = call i32 @twl4030_mmc_init(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @beagle_vmmc1_supply, i32 0, i32 0), align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @beagle_vsim_supply, i32 0, i32 0), align 4
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  %39 = call i32 @gpio_request(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  %42 = call i32 @gpio_direction_input(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %45 = add i32 %43, %44
  %46 = call i32 @gpio_request(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %49 = add i32 %47, %48
  %50 = call i32 @gpio_direction_output(i32 %49, i32 0)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %53 = add i32 %51, %52
  %54 = add i32 %53, 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gpio_leds, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  ret i32 0
}

declare dso_local i32 @omap_cfg_reg(i32) #1

declare dso_local i32 @twl4030_mmc_init(%struct.TYPE_6__*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
