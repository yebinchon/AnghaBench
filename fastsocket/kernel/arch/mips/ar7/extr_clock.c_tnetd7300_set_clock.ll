; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/ar7/extr_clock.c_tnetd7300_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/ar7/extr_clock.c_tnetd7300_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnetd7300_clock = type { i32, i32 }

@ar7_bus_clock = common dso_local global i32 0, align 4
@BOOT_PLL_SOURCE_MASK = common dso_local global i32 0, align 4
@AR7_REF_CLOCK = common dso_local global i32 0, align 4
@AR7_XTAL_CLOCK = common dso_local global i32 0, align 4
@ar7_cpu_clock = common dso_local global i32 0, align 4
@PREDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_STATUS = common dso_local global i32 0, align 4
@MUL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tnetd7300_clock*, i32*, i32)* @tnetd7300_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tnetd7300_set_clock(i32 %0, %struct.tnetd7300_clock* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tnetd7300_clock*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.tnetd7300_clock* %1, %struct.tnetd7300_clock** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ar7_bus_clock, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BOOT_PLL_SOURCE_MASK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %19, %20
  switch i32 %21, label %30 [
    i32 131, label %22
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* @ar7_bus_clock, align 4
  store i32 %23, i32* %12, align 4
  br label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @AR7_REF_CLOCK, align 4
  store i32 %25, i32* %12, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @AR7_XTAL_CLOCK, align 4
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @ar7_cpu_clock, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %4, %28, %26, %24, %22
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @calculate(i32 %31, i32 %32, i32* %9, i32* %10, i32* %11)
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @PREDIV_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  %40 = or i32 %37, %39
  %41 = load %struct.tnetd7300_clock*, %struct.tnetd7300_clock** %6, align 8
  %42 = getelementptr inbounds %struct.tnetd7300_clock, %struct.tnetd7300_clock* %41, i32 0, i32 1
  %43 = call i32 @writel(i32 %40, i32* %42)
  %44 = call i32 @msleep(i32 1)
  %45 = load %struct.tnetd7300_clock*, %struct.tnetd7300_clock** %6, align 8
  %46 = getelementptr inbounds %struct.tnetd7300_clock, %struct.tnetd7300_clock* %45, i32 0, i32 0
  %47 = call i32 @writel(i32 4, i32* %46)
  br label %48

48:                                               ; preds = %55, %30
  %49 = load %struct.tnetd7300_clock*, %struct.tnetd7300_clock** %6, align 8
  %50 = getelementptr inbounds %struct.tnetd7300_clock, %struct.tnetd7300_clock* %49, i32 0, i32 0
  %51 = call i32 @readl(i32* %50)
  %52 = load i32, i32* @PLL_STATUS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %48

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @MUL_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %60, 2040
  %62 = or i32 %61, 14
  %63 = load %struct.tnetd7300_clock*, %struct.tnetd7300_clock** %6, align 8
  %64 = getelementptr inbounds %struct.tnetd7300_clock, %struct.tnetd7300_clock* %63, i32 0, i32 0
  %65 = call i32 @writel(i32 %62, i32* %64)
  %66 = call i32 @msleep(i32 75)
  ret void
}

declare dso_local i32 @calculate(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
