; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_ht.c_b43_httab_write_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_ht.c_b43_httab_write_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_HTTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_PHY_HT_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_PHY_HT_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_PHY_HT_TABLE_DATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_httab_write_bulk(%struct.b43_wldev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @B43_HTTAB_TYPEMASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @B43_HTTAB_TYPEMASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 65535
  %24 = zext i1 %23 to i32
  %25 = call i32 @B43_WARN_ON(i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %27 = load i32, i32* @B43_PHY_HT_TABLE_ADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 %27, i32 %28)
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %78, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %75 [
    i32 128, label %36
    i32 130, label %48
    i32 129, label %60
  ]

36:                                               ; preds = %34
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, -256
  %43 = call i32 @B43_WARN_ON(i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %45 = load i32, i32* @B43_PHY_HT_TABLE_DATALO, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %44, i32 %45, i32 %46)
  br label %77

48:                                               ; preds = %34
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %52, i32** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, -65536
  %55 = call i32 @B43_WARN_ON(i32 %54)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %57 = load i32, i32* @B43_PHY_HT_TABLE_DATALO, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @b43_phy_write(%struct.b43_wldev* %56, i32 %57, i32 %58)
  br label %77

60:                                               ; preds = %34
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %11, align 8
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %66 = load i32, i32* @B43_PHY_HT_TABLE_DATAHI, align 4
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, 16
  %69 = call i32 @b43_phy_write(%struct.b43_wldev* %65, i32 %66, i32 %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %71 = load i32, i32* @B43_PHY_HT_TABLE_DATALO, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 65535
  %74 = call i32 @b43_phy_write(%struct.b43_wldev* %70, i32 %71, i32 %73)
  br label %77

75:                                               ; preds = %34
  %76 = call i32 @B43_WARN_ON(i32 1)
  br label %77

77:                                               ; preds = %75, %60, %48, %36
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %30

81:                                               ; preds = %30
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
