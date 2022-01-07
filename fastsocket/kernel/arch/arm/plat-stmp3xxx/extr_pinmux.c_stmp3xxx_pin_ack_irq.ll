; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_pin_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_pin_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_pinmux_bank = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stmp3xxx_pin_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmp3xxx_pin_ack_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmp3xxx_pinmux_bank*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @stmp3xxx_irq_to_gpio(i32 %6, %struct.stmp3xxx_pinmux_bank** %4, i32* %5)
  %8 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %4, align 8
  %9 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %4, align 8
  %17 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @stmp3xxx_clearl(i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @stmp3xxx_irq_to_gpio(i32, %struct.stmp3xxx_pinmux_bank**, i32*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
