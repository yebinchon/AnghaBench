; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_get_phy_type_from_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_get_phy_type_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e1000_phy_unknown = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_phy_igp_2 = common dso_local global i32 0, align 4
@e1000_phy_gg82563 = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i32 0, align 4
@e1000_phy_ife = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i32 0, align 4
@e1000_phy_82577 = common dso_local global i32 0, align 4
@e1000_phy_82579 = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_get_phy_type_from_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @e1000_phy_unknown, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %26 [
    i32 130, label %6
    i32 131, label %6
    i32 128, label %6
    i32 129, label %6
    i32 133, label %8
    i32 141, label %10
    i32 132, label %12
    i32 135, label %14
    i32 134, label %14
    i32 136, label %14
    i32 143, label %16
    i32 142, label %16
    i32 138, label %18
    i32 139, label %20
    i32 137, label %22
    i32 140, label %24
  ]

6:                                                ; preds = %1, %1, %1, %1
  %7 = load i32, i32* @e1000_phy_m88, align 4
  store i32 %7, i32* %3, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load i32, i32* @e1000_phy_igp_2, align 4
  store i32 %9, i32* %3, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @e1000_phy_gg82563, align 4
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load i32, i32* @e1000_phy_igp_3, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %1, %1, %1
  %15 = load i32, i32* @e1000_phy_ife, align 4
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @e1000_phy_bm, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @e1000_phy_82578, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @e1000_phy_82577, align 4
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @e1000_phy_82579, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @e1000_phy_i217, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @e1000_phy_unknown, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
