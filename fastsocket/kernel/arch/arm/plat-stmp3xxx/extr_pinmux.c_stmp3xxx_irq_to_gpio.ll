; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_irq_to_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_pinmux.c_stmp3xxx_irq_to_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_pinmux_bank = type { i32 }

@pinmux_banks = common dso_local global %struct.stmp3xxx_pinmux_bank* null, align 8
@NR_BANKS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.stmp3xxx_pinmux_bank**, i32*)* @stmp3xxx_irq_to_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_irq_to_gpio(i32 %0, %struct.stmp3xxx_pinmux_bank** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmp3xxx_pinmux_bank**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stmp3xxx_pinmux_bank*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.stmp3xxx_pinmux_bank** %1, %struct.stmp3xxx_pinmux_bank*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** @pinmux_banks, align 8
  store %struct.stmp3xxx_pinmux_bank* %9, %struct.stmp3xxx_pinmux_bank** %8, align 8
  br label %10

10:                                               ; preds = %40, %3
  %11 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %8, align 8
  %12 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** @pinmux_banks, align 8
  %13 = load i32, i32* @NR_BANKS, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %12, i64 %14
  %16 = icmp ult %struct.stmp3xxx_pinmux_bank* %11, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %8, align 8
  %19 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %8, align 8
  %26 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 32
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %8, align 8
  %32 = load %struct.stmp3xxx_pinmux_bank**, %struct.stmp3xxx_pinmux_bank*** %6, align 8
  store %struct.stmp3xxx_pinmux_bank* %31, %struct.stmp3xxx_pinmux_bank** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %8, align 8
  %35 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %46

39:                                               ; preds = %23, %17
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.stmp3xxx_pinmux_bank*, %struct.stmp3xxx_pinmux_bank** %8, align 8
  %42 = getelementptr inbounds %struct.stmp3xxx_pinmux_bank, %struct.stmp3xxx_pinmux_bank* %41, i32 1
  store %struct.stmp3xxx_pinmux_bank* %42, %struct.stmp3xxx_pinmux_bank** %8, align 8
  br label %10

43:                                               ; preds = %10
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
