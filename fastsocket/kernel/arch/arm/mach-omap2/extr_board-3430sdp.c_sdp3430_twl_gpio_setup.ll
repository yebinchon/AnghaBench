; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-3430sdp.c_sdp3430_twl_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-3430sdp.c_sdp3430_twl_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }

@mmc = common dso_local global %struct.TYPE_6__* null, align 8
@sdp3430_vmmc1_supply = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@sdp3430_vsim_supply = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@sdp3430_vmmc2_supply = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"sub_lcd_en_bkl\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sub_lcd_nRST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @sdp3430_twl_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp3430_twl_gpio_setup(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add i32 %7, 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %18 = call i32 @twl4030_mmc_init(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sdp3430_vmmc1_supply, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdp3430_vsim_supply, i32 0, i32 0), align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmc, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp3430_vmmc2_supply, i32 0, i32 0), align 4
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 7
  %33 = call i32 @gpio_request(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 7
  %36 = call i32 @gpio_direction_output(i32 %35, i32 0)
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 15
  %39 = call i32 @gpio_request(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 15
  %42 = call i32 @gpio_direction_output(i32 %41, i32 0)
  ret i32 0
}

declare dso_local i32 @twl4030_mmc_init(%struct.TYPE_6__*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
