; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_lcntab_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_lcntab_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LCNTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_lcntab_write(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @B43_LCNTAB_TYPEMASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 65535
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %53 [
    i32 128, label %14
    i32 130, label %26
    i32 129, label %38
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, -256
  %17 = call i32 @B43_WARN_ON(i32 %16)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %19 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @b43_phy_write(%struct.b43_wldev* %18, i32 %19, i32 %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %23 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %22, i32 %23, i32 %24)
  br label %55

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -65536
  %29 = call i32 @B43_WARN_ON(i32 %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %31 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %35 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @b43_phy_write(%struct.b43_wldev* %34, i32 %35, i32 %36)
  br label %55

38:                                               ; preds = %3
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %40 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @b43_phy_write(%struct.b43_wldev* %39, i32 %40, i32 %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %44 = load i32, i32* @B43_PHY_LCN_TABLE_DATAHI, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 16
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %43, i32 %44, i32 %46)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 65535
  %52 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 %49, i32 %51)
  br label %55

53:                                               ; preds = %3
  %54 = call i32 @B43_WARN_ON(i32 1)
  br label %55

55:                                               ; preds = %53, %38, %26, %14
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
