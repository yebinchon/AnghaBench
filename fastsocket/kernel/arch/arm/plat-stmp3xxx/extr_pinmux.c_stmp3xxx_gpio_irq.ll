; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, %struct.TYPE_3__*)* }
%struct.irq_desc = type { i32 }
%struct.stmp3xxx_pinmux_bank = type { i32, i32 }

@irq_desc = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @stmp3xxx_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmp3xxx_gpio_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.stmp3xxx_pinmux_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.stmp3xxx_pinmux_bank* @get_irq_data(i32 %8)
  store %struct.stmp3xxx_pinmux_bank* %9, %struct.stmp3xxx_pinmux_bank** %5, align 8
  %10 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %5, align 8
  %11 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %5, align 8
  %14 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__raw_readl(i32 %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = call i32 %30(i32 %31, %struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %24, %20
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %17

42:                                               ; preds = %17
  ret void
}

declare dso_local %struct.stmp3xxx_pinmux_bank* @get_irq_data(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
