; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_lubbock.c_lubbock_irda_transceiver_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_lubbock.c_lubbock_irda_transceiver_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IR_SIRMODE = common dso_local global i32 0, align 4
@LUB_MISC_WR = common dso_local global i32 0, align 4
@IR_FIRMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @lubbock_irda_transceiver_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lubbock_irda_transceiver_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IR_SIRMODE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @LUB_MISC_WR, align 4
  %14 = and i32 %13, -17
  store i32 %14, i32* @LUB_MISC_WR, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IR_FIRMODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @LUB_MISC_WR, align 4
  %22 = or i32 %21, 16
  store i32 %22, i32* @LUB_MISC_WR, align 4
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @pxa2xx_transceiver_mode(%struct.device* %25, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pxa2xx_transceiver_mode(%struct.device*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
