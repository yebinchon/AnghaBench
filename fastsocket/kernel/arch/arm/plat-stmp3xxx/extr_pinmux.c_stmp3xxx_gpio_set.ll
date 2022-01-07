; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stmp3xxx_pinmux_bank = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @stmp3xxx_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmp3xxx_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmp3xxx_pinmux_bank*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.stmp3xxx_pinmux_bank* @to_pinmux_bank(%struct.gpio_chip* %8)
  store %struct.stmp3xxx_pinmux_bank* %9, %struct.stmp3xxx_pinmux_bank** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %7, align 8
  %16 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @stmp3xxx_setl(i32 %14, i32 %17)
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %7, align 8
  %23 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stmp3xxx_clearl(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %12
  ret void
}

declare dso_local %struct.stmp3xxx_pinmux_bank* @to_pinmux_bank(%struct.gpio_chip*) #1

declare dso_local i32 @stmp3xxx_setl(i32, i32) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
