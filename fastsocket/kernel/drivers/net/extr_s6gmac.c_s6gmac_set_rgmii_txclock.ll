; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_set_rgmii_txclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_set_rgmii_txclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6gmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@S6_REG_GREG1 = common dso_local global i64 0, align 8
@S6_GREG1_PLLSEL = common dso_local global i64 0, align 8
@S6_GREG1_PLLSEL_GMAC_MASK = common dso_local global i32 0, align 4
@S6_GREG1_PLLSEL_GMAC = common dso_local global i32 0, align 4
@S6_GREG1_PLLSEL_GMAC_2500KHZ = common dso_local global i32 0, align 4
@S6_GREG1_PLLSEL_GMAC_25MHZ = common dso_local global i32 0, align 4
@S6_GREG1_PLLSEL_GMAC_125MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6gmac*)* @s6gmac_set_rgmii_txclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_set_rgmii_txclock(%struct.s6gmac* %0) #0 {
  %2 = alloca %struct.s6gmac*, align 8
  %3 = alloca i32, align 4
  store %struct.s6gmac* %0, %struct.s6gmac** %2, align 8
  %4 = load i64, i64* @S6_REG_GREG1, align 8
  %5 = load i64, i64* @S6_GREG1_PLLSEL, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @S6_GREG1_PLLSEL_GMAC_MASK, align 4
  %9 = load i32, i32* @S6_GREG1_PLLSEL_GMAC, align 4
  %10 = shl i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %15 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %36 [
    i32 10, label %18
    i32 100, label %24
    i32 1000, label %30
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @S6_GREG1_PLLSEL_GMAC_2500KHZ, align 4
  %20 = load i32, i32* @S6_GREG1_PLLSEL_GMAC, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load i32, i32* @S6_GREG1_PLLSEL_GMAC_25MHZ, align 4
  %26 = load i32, i32* @S6_GREG1_PLLSEL_GMAC, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @S6_GREG1_PLLSEL_GMAC_125MHZ, align 4
  %32 = load i32, i32* @S6_GREG1_PLLSEL_GMAC, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %1
  br label %43

37:                                               ; preds = %30, %24, %18
  %38 = load i32, i32* %3, align 4
  %39 = load i64, i64* @S6_REG_GREG1, align 8
  %40 = load i64, i64* @S6_GREG1_PLLSEL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
