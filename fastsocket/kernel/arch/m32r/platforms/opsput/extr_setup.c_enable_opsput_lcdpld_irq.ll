; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/opsput/extr_setup.c_enable_opsput_lcdpld_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/opsput/extr_setup.c_enable_opsput_lcdpld_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@lcdpld_icu_data = common dso_local global %struct.TYPE_2__* null, align 8
@PLD_ICUCR_IEN = common dso_local global i64 0, align 8
@PLD_ICUCR_ILEVEL6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_opsput_lcdpld_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_opsput_lcdpld_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @irq2lcdpldirq(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @lcdpldirq2port(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcdpld_icu_data, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLD_ICUCR_IEN, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @PLD_ICUCR_ILEVEL6, align 8
  %19 = or i64 %17, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @outw(i64 %20, i64 %21)
  ret void
}

declare dso_local i32 @irq2lcdpldirq(i32) #1

declare dso_local i64 @lcdpldirq2port(i32) #1

declare dso_local i32 @outw(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
