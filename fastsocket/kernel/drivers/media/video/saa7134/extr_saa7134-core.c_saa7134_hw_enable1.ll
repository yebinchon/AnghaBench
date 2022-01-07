; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_hw_enable1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_hw_enable1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@SAA7134_FIFO_SIZE = common dso_local global i32 0, align 4
@SAA7134_THRESHOULD = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_VPLLE = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_APLLE = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_EXOSC = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_EVFE1 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_EVFE2 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_ESFE = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_EBDAC = common dso_local global i32 0, align 4
@SAA7134_SPECIAL_MODE = common dso_local global i32 0, align 4
@SAA7134_SOURCE_TIMING2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_hw_enable1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_hw_enable1(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load i32, i32* @SAA7134_FIFO_SIZE, align 4
  %4 = call i32 @saa_writel(i32 %3, i32 134677763)
  %5 = load i32, i32* @SAA7134_THRESHOULD, align 4
  %6 = call i32 @saa_writel(i32 %5, i32 33686018)
  %7 = load i32, i32* @SAA7134_MAIN_CTRL, align 4
  %8 = load i32, i32* @SAA7134_MAIN_CTRL_VPLLE, align 4
  %9 = load i32, i32* @SAA7134_MAIN_CTRL_APLLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SAA7134_MAIN_CTRL_EXOSC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SAA7134_MAIN_CTRL_EVFE1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SAA7134_MAIN_CTRL_EVFE2, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SAA7134_MAIN_CTRL_ESFE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SAA7134_MAIN_CTRL_EBDAC, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @saa_writel(i32 %7, i32 %20)
  %22 = load i32, i32* @SAA7134_SPECIAL_MODE, align 4
  %23 = call i32 @saa_writeb(i32 %22, i32 1)
  %24 = load i32, i32* @SAA7134_SOURCE_TIMING2, align 4
  %25 = call i32 @saa_writeb(i32 %24, i32 32)
  ret i32 0
}

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
