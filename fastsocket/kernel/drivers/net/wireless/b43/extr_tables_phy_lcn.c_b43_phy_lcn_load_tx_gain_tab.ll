; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_phy_lcn_load_tx_gain_tab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_phy_lcn_load_tx_gain_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_lcntab_tx_gain_tbl_entry = type { i32, i32, i32, i32, i32 }

@B43_BFL_FEM = common dso_local global i32 0, align 4
@B43_LCNTAB_TX_GAIN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_lcntab_tx_gain_tbl_entry*)* @b43_phy_lcn_load_tx_gain_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_load_tx_gain_tab(%struct.b43_wldev* %0, %struct.b43_lcntab_tx_gain_tbl_entry* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_lcntab_tx_gain_tbl_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_lcntab_tx_gain_tbl_entry* %1, %struct.b43_lcntab_tx_gain_tbl_entry** %4, align 8
  store i32 112, i32* %7, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @B43_BFL_FEM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 16, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %2
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %86, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @B43_LCNTAB_TX_GAIN_SIZE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 24
  %27 = load %struct.b43_lcntab_tx_gain_tbl_entry*, %struct.b43_lcntab_tx_gain_tbl_entry** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %27, i64 %28
  %30 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %26, %32
  %34 = load %struct.b43_lcntab_tx_gain_tbl_entry*, %struct.b43_lcntab_tx_gain_tbl_entry** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %34, i64 %35
  %37 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %33, %39
  %41 = load %struct.b43_lcntab_tx_gain_tbl_entry*, %struct.b43_lcntab_tx_gain_tbl_entry** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %41, i64 %42
  %44 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %6, align 8
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 192, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @B43_LCNTAB32(i32 7, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @b43_lcntab_write(%struct.b43_wldev* %48, i32 %52, i64 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 320, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @B43_LCNTAB32(i32 7, i32 %58)
  %60 = call i64 @b43_lcntab_read(%struct.b43_wldev* %55, i32 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = and i64 %61, 1048575
  store i64 %62, i64* %6, align 8
  %63 = load %struct.b43_lcntab_tx_gain_tbl_entry*, %struct.b43_lcntab_tx_gain_tbl_entry** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %63, i64 %64
  %66 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 28
  %69 = load %struct.b43_lcntab_tx_gain_tbl_entry*, %struct.b43_lcntab_tx_gain_tbl_entry** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %69, i64 %70
  %72 = getelementptr inbounds %struct.b43_lcntab_tx_gain_tbl_entry, %struct.b43_lcntab_tx_gain_tbl_entry* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 20
  %75 = or i32 %68, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %6, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %6, align 8
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = add i64 320, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @B43_LCNTAB32(i32 7, i32 %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @b43_lcntab_write(%struct.b43_wldev* %79, i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %24
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %20

89:                                               ; preds = %20
  ret void
}

declare dso_local i32 @b43_lcntab_write(%struct.b43_wldev*, i32, i64) #1

declare dso_local i32 @B43_LCNTAB32(i32, i32) #1

declare dso_local i64 @b43_lcntab_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
