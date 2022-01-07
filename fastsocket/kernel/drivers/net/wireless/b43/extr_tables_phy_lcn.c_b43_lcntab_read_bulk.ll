; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_lcntab_read_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_lcntab_read_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LCNTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_lcntab_read_bulk(%struct.b43_wldev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @B43_LCNTAB_TYPEMASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @B43_LCNTAB_TYPEMASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 65535
  %23 = zext i1 %22 to i32
  %24 = call i32 @B43_WARN_ON(i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %25, i32 %26, i32 %27)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %67, %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %64 [
    i32 128, label %35
    i32 130, label %43
    i32 129, label %50
  ]

35:                                               ; preds = %33
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %37 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %38 = call i32 @b43_phy_read(%struct.b43_wldev* %36, i32 %37)
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  br label %66

43:                                               ; preds = %33
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %45 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %46 = call i32 @b43_phy_read(%struct.b43_wldev* %44, i32 %45)
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %49, i32** %10, align 8
  br label %66

50:                                               ; preds = %33
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %52 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %53 = call i32 @b43_phy_read(%struct.b43_wldev* %51, i32 %52)
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %56 = load i32, i32* @B43_PHY_LCN_TABLE_DATAHI, align 4
  %57 = call i32 @b43_phy_read(%struct.b43_wldev* %55, i32 %56)
  %58 = shl i32 %57, 16
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %10, align 8
  br label %66

64:                                               ; preds = %33
  %65 = call i32 @B43_WARN_ON(i32 1)
  br label %66

66:                                               ; preds = %64, %50, %43, %35
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %29

70:                                               ; preds = %29
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
