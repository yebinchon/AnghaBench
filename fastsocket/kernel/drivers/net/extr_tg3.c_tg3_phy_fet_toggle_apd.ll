; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_fet_toggle_apd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_fet_toggle_apd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MII_TG3_FET_TEST = common dso_local global i32 0, align 4
@MII_TG3_FET_SHADOW_EN = common dso_local global i32 0, align 4
@MII_TG3_FET_SHDW_AUXSTAT2 = common dso_local global i32 0, align 4
@MII_TG3_FET_SHDW_AUXSTAT2_APD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_phy_fet_toggle_apd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_fet_toggle_apd(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = load i32, i32* @MII_TG3_FET_TEST, align 4
  %9 = call i32 @tg3_readphy(%struct.tg3* %7, i32 %8, i32* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %2
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @MII_TG3_FET_TEST, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MII_TG3_FET_SHADOW_EN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @tg3_writephy(%struct.tg3* %12, i32 %13, i32 %16)
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = load i32, i32* @MII_TG3_FET_SHDW_AUXSTAT2, align 4
  %20 = call i32 @tg3_readphy(%struct.tg3* %18, i32 %19, i32* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @MII_TG3_FET_SHDW_AUXSTAT2_APD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @MII_TG3_FET_SHDW_AUXSTAT2_APD, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.tg3*, %struct.tg3** %3, align 8
  %36 = load i32, i32* @MII_TG3_FET_SHDW_AUXSTAT2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @tg3_writephy(%struct.tg3* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %11
  %40 = load %struct.tg3*, %struct.tg3** %3, align 8
  %41 = load i32, i32* @MII_TG3_FET_TEST, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @tg3_writephy(%struct.tg3* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
