; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_init_5401phy_dsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_init_5401phy_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MII_TG3_AUXCTL_SHDWSEL_AUXCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_init_5401phy_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_init_5401phy_dsp(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_AUXCTL, align 4
  %6 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %4, i32 %5, i32 19488)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = call i32 @tg3_phydsp_write(%struct.tg3* %7, i32 18, i32 6148)
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tg3*, %struct.tg3** %2, align 8
  %12 = call i32 @tg3_phydsp_write(%struct.tg3* %11, i32 19, i32 4612)
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = call i32 @tg3_phydsp_write(%struct.tg3* %15, i32 32774, i32 306)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.tg3*, %struct.tg3** %2, align 8
  %20 = call i32 @tg3_phydsp_write(%struct.tg3* %19, i32 32774, i32 562)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = call i32 @tg3_phydsp_write(%struct.tg3* %23, i32 8223, i32 2592)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = call i32 @udelay(i32 40)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @tg3_phy_auxctl_write(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phydsp_write(%struct.tg3*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
